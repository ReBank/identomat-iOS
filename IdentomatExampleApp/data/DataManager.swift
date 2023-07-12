//
//  DataManager.swift
//  IdentomatExampleApp
//
//  Created by Identomat Inc. on 12/12/20.
//

import Foundation
import identomat
import UIKit


class DataManager{
    
    
    static var flagsDict : [String : Any] =
    [
        "language" : "en",
        "liveness" : true,
        "allow_document_upload" : true,
        "skip_document" : false,
        "skip_face" : false,
        "require_face_document" : false,
        "skip_agreement" : false,
        "server" : "computer",
        "allow_nfc_capture" : true,

        "document_type_id" : true,
        "document_type_passport" : true,
        "document_type_driver_license" : true,
        "document_type_residence_license" : true,
        "document_type_non_bio_passport" : true,
        "document_type_driver_license_vis" : true,

        "allow_general_document_capture" : false,
        "allow_general_document_upload" : false,
        "inn" : false,
    ]
    static var colors : [ String : String ] = [
        "background_low" : "#011627",
        "background_high" : "#011627",
        "shadow_color": "#011627",
        "shadow_color": "#011627",
        "text_color_header" : "#00ff00"
    ]
    static var strings : [String : Any?] = [
        "en" : [
            "identomat_agree" : "Yes I Agree",
            "identomat_disagree": "Disagree",
        ],
        "ru" : [
            "identomat_agree": "Согласен",
            "identomat_disagree": "Не согласен",
        ],
        "es" : [
            "identomat_agree": "Acepto",
            "identomat_disagree": "No acepto",
        ],
        "ka" : [
            "identomat_agree": "ვეთანხმები",
            "identomat_disagree": "არ ვეთანხმები",
        ]
    ]


    static var variables : [String : Any?] = [
       "":"",
       "liveness_neutral_icon": UIImage(named: "liveness_neutral_icon"),
       "liveness_smile_icon" : UIImage(named: "liveness_smile_icon"),
       
       "liveness_retry_icon" : nil,
       "scan_retry_icon" : nil,
       "camera_deny_icon" : nil,
       "upload_retry_icon" : nil,

       "liveness_retry_icon_size" : 100,
       "scan_retry_icon_size" : 100,
       "camera_deny_icon_size" : 100,
       "upload_retry_icon_size" : 100,

       "skip_liveness_instructions" : false,
       "liveness_type" : 1,
       "button_corner_radius" : 5,
       "panel_elevation" : 1,

       "title_font":"BPG Glaho",
       "head1_font":"BPG Glaho",
       "head2_font":"BPG Glaho",
       "body_font" :"BPG Glaho",

       "title_font_size":20,
       "head1_font_size":20,
       "head2_font_size":14,
       "body_font_size":12,

   ]
    
    
    
}

