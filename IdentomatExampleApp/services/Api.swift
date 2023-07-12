//
//  Api.swift
//  IdentomatExampleApp
//
//  Created by Identomat Inc. on 11/9/20.
//

import Foundation
import Alamofire


class Api{
    public static let BASE_URL = NSLocalizedString("base_url", tableName: "urls", comment: "")        
    public static let SESSION_URL = BASE_URL + NSLocalizedString("session_url", tableName: "urls", comment: "")
    public static let RESULT_URL = BASE_URL + NSLocalizedString("result_url", tableName: "urls", comment: "")
    
    
    /**
        Do not put company key in the app. This code is only for demonstration.
    **/
    public static let COMPANY_KEY = "insert_company_key"; // place to insert your company key
    public static let COMPANY_KEY_URL = NSLocalizedString("company_key", tableName: "urls", comment: "") + COMPANY_KEY;
    public static var token : String = "";
    
    public static let CODE_WRONG_COMPANY_KEY = "COMPANY_KEY_INVALID";

    
    /**
        You have to generate session token on server side and send it to client. Do not put company key in the app. This code is only for demonstration.
    **/
    static func getToken(context : ViewController, flagsDict : [String:Any]){
        var url = Api.SESSION_URL + "?" + COMPANY_KEY_URL
        let flagsJsonData = try? JSONSerialization.data(withJSONObject: flagsDict)
        let flagsJsonString: String = NSString(data: flagsJsonData!, encoding: String.Encoding.utf8.rawValue)! as String
        let flagsEncoded = flagsJsonString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        url += "&flags=" + flagsEncoded!;
        print(url)
        AF.request(url, method: .post, encoding: JSONEncoding.default).responseJSON{
            (response) in
            switch response.result {
                case .success:
                    let data = try? response.result.get();
                    if(data is String){
                        print(data!)
                        if(data as! String == Api.CODE_WRONG_COMPANY_KEY){
                            context.fail();
                            return;
                        }
                       
                        Api.token = data as! String;
                        //print(Api.token)
                        context.start();
                    }
                    break;
                case .failure(let error):
                    print("failure: ")
                    print(error)
                    break
            }
            return;
            
        }
    }
    
    
    /**
         You have to get result on server side and send it to client. Do not put company key in the app. This code is only for demonstration.
    **/

    static func getResult(context : ResultViewController){
        let url = Api.RESULT_URL + "?" + "session_token=" + Api.token + "&" + COMPANY_KEY_URL
        AF.request(url, method: .post, encoding: JSONEncoding.default).responseJSON{
            (response) in

            switch response.result {
                case .success:
                    print("success")
                    let data = try? response.result.get();
                    if data is [String : AnyObject]{
                        context.success(dictionary: data as! [String : AnyObject])
                    }
                    break;
                case .failure(let error):
                    print("failure: ")
                    print(error)
                    break
            }
        }
    }
}

