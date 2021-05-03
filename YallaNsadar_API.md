1- SignUp API 
  >   - Request
      - Request type -> POST

      - Parameter 
              {
              'first_name' : string,
              'second_name': string,
              'contry' : int,
              'mobile' : 'string',  
              'email': string,
              'password': string
              }

  >   - Response
        - Success Return 200
        {
          'status': int,
          'code' : int,   
        }


2- Email Verification API 
  >   - Request
    - Request type -> GET

     - Parameter 
            {
            'link': string,
            }

    - Response
      - Success Return 200
        {
          'status': int,
          'code' : int,   
        }



3- Login API 
  >   - Request
      - Request type -> POST

      - Parameter 
              {
              'email': string,
              'password': string
              }

  >   - Response
        - Success Return 200
        // If Account type Importer
          {
            'userId': int,
            'token': string,
            'rfqs_number': int,
            'orders_number' int,
            'top_exporter': object[
                                {
                                'exporter_id':int,
                                'exporter_name': string,
                                'rate':double,
                                'contry': string,
                                }
                              ],
            'latest_products': object[
                                {
                                'product_id':int,
                                'product_name': string,
                                'product_image':string,
                                'exporter_id': int,
                                'exporter_name': string,
                                'product_description': string,
                                'contry': string,
                                }
                              ],
            'RFQ_process_track': object[
                                {
                                'rfq_id':int,
                                'product_name': string,
                                'categry':string,
                                'quantity': int,
                                'measuerunite': string,
                                'contry': string,
                                'status': string,
                                'process_track_steps': object[
                                    {
                                      'step': string,
                                      'status': boolean,
                                      'date': date,
                                    }
                                  ],
                                }
                              ],
            'notifications': object[
                                {
                                'notification_id':int,
                                'notification_title': string,
                                'date':date,
                                'status': boolean,
                                }
                              ],                  
            'status': int            
            }

        // If Account Type Exporter
          {
            'userId': int,
            'token': string,
            'total_proposals_number': int,
            'accepted_proposals_number' int,
            'RFQ_process_track': object[
                                {
                                'rfq_id':int,
                                'product_name': string,
                                'categry':string,
                                'quantity': int,
                                'measuerunite': string,
                                'contry': string,
                                'status': string,
                                'process_track_steps': object[
                                    {
                                      'step': string,
                                      'status': boolean,
                                      'date': date,
                                    }
                                  ],
                                }
                              ],
            'proposals_track': object[
                                {
                                'proposel_id':int,
                                'product_name': string,
                                'categry':string,
                                'quantity': int,
                                'measuerunite': string,
                                'contry': string,
                                'status': string,
                                'process_track_steps': object[
                                    {
                                      'comment': string,
                                      'status': boolean,
                                      'date': date,
                                    }
                                  ],
                                }
                              ],
            'notifications': object[
                                {
                                'notification_id':int,
                                'notification_title': string,
                                'date':date,
                                'status': boolean,
                                }
                              ],                  
            'status': int            
            }  
        // If Account Type Service Provider
          {
            'userId': int,
            'token': string,
            'total_proposals_number': int,
            'accepted_proposals_number' int,
            'RFQ_process_track': object[
                                {
                                'rfq_id':int,
                                'product_name': string,
                                'categry':string,
                                'quantity': int,
                                'measuerunite': string,
                                'contry': string,
                                'status': string,
                                'process_track_steps': object[
                                    {
                                      'step': string,
                                      'status': boolean,
                                      'date': date,
                                    }
                                  ],
                                }
                              ],
            'proposals_track': object[
                                {
                                'proposel_id':int,
                                'product_name': string,
                                'categry':string,
                                'quantity': int,
                                'measuerunite': string,
                                'contry': string,
                                'status': string,
                                'process_track_steps': object[
                                    {
                                      'comment': string,
                                      'status': boolean,
                                      'date': date,
                                    }
                                  ],
                                }
                              ],
            'notifications': object[
                                {
                                'notification_id':int,
                                'notification_title': string,
                                'date':date,
                                'status': boolean,
                                }
                              ],                  
            'status': int            
            }



4- Get Profile Personal Information API 
  > - Request
    - Request type -> POST

    - Parameter 
            {
            'token': string,
            }
    - Response
      - Success Return 200
          {
            'first_name' : string,
            'second_name': string,
            'mobile' : 'string',  
            'whatsApp' : 'string',
            'email' : string,
            'password' : string,
            'image' : string,
            'birth_date' : date,
            'gender' : boolean,
            'status' : int,
            'countries': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                'flage': string,
                                'code': string
                                }
                              ],
            'cities': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                              ],
            'areas': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                            ],
            'account_type': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                              ],                                                               
            }

5- Get Coutries API 
  >  - Request
    - Request type -> GET

    - Response
      - Success Return 200
          {
            'status' : int,
            'Countries': object[
                          {
                          'id':int,
                          'name': string,
                          'flag': boolean,
                          'code': string
                          }
                      ],                                                            
            }




6- Get Cities API 
  >  - Request
    - Request type -> POST

    - Parameter 
            {
            'token': string,
            'country_id': int
            }
    - Response
      - Success Return 200
          {
            'status' : int,
            'cities': object[
                          {
                          'id':int,
                          'name': string,
                          'status': boolean,
                          }
                      ],                                                            
            }

7- Get Areas API 

  >  - Request
    - Request type -> POST

    - Parameter 
            {
            'token': string,
            'city_id': int
            }
    - Response
      - Success Return 200
          {
            'status' : int,
            'areas': object[
                          {
                          'id':int,
                          'name': string,
                          'status': boolean,
                          }
                      ],                                                            
            }


8- Update Profile Personal Information API 
  >   - Request
    - Request type -> POST

    - Parameter 
            {
            'token': string,
            'first_name' : string,
            'second_name': string,
            'mobile' : 'string',  
            'whatsApp' : 'string',
            'email' : string,
            'password' : string,
            'image' : string,
            'birth_date' : date,
            'gender' : boolean,
            'country': int,
            'area':int,
            'account_type': int,
            }
    - Response
      - Success Return 200
          {

            'status' : int,
            'code': int
          }


9- Get Profile Company Information API 

  >   - Request
      - Request type -> POST

      - Parameter 
              {
              'token': string,
              }
      - Response
      - Success Return 200
          {
            'logo' : string,
            'company_name': string,
            'establishment_year': date,
            'status' : int,
            'company_conact': {
                      'firs_name': string,
                      'second_name': string,
                      'email': string,
                      'phone': string,
                      'country_id': int,
                      'city_id': int,
                      'area_id': int,
                  },
            'sectors': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                              ],
            'employees_range': object[
                                {
                                'id':int,
                                'start': int,
                                'end': int,
                                'status': boolean,
                                }
                              ],
            'turnover': object[
                                {
                                'id':int,
                                'start': int,
                                'end': int,
                                'status': boolean,
                                }
                              ],
            'legal_status': object[
                                {
                                'id':int,
                                'name': int,
                                'status': boolean,
                                }
                              ],                                                      
            'business_type': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                              ],
            'business_type_subcategory': object[
                                {
                                'id':int,
                                'name': string,
                                'status': boolean,
                                }
                              ],
            'import_and_export_percentage': object[
                                {
                                'id':int,
                                'start': int,
                                'end': int,
                                'status': boolean,
                                }
                              ],
            'annual_input_and_export':  : object[
                                {
                                'id':int,
                                'start': int,
                                'end': int,
                                'status': boolean,
                                }
                              ],                                                  
            'social_account': object[
                                {
                                'id':int,
                                'name': string,
                                'icone': string,
                                }
                            ],
            'company_social_account': object[
                                {
                                'id':int,
                                'social_account_id': int,
                                'link': string,
                                }
                              ],                                                               
            'certificates_and_file':  object[
                                {
                                'id':int,
                                'name': string,
                                }
                            ],
            'company_certificates_and_file':  object[
                                {
                                'id':int,
                                'name': string,
                                'certificates_and_file_id': int,
                                'link': string,
                                }
                            ],                

          }
            
10- Edit Profile Company Information API 
  >   - Request
      - Request type -> POST

      - Parameter 
              {
              'token': string,
              'logo' : file,
              'company_name': string,
              'establishment_year': date,
              'company_conact': {
                        'firs_name': string,
                        'second_name': string,
                        'email': string,
                        'phone': string,
                        'country_id': int,
                        'city_id': int,
                        'area_id': int,
                    },
              'sectors_id': (int,int),
              'employees_range_id': int,
              'turnover': int,
              'legal_status': int,                                                      
              'business_type':int,
              'business_type_subcategory': :int,
              'import_and_export_percentage':int,
              'annual_input_and_export': int,                                                  
              'company_social_account': object[
                                  {
                                  'id':int,
                                  'social_account_id': int,
                                  'link': string,
                                  } Or New{
                                  'social_account_id': int,
                                  'link': string,
                                  }
                                ],                                                               
              'company_certificates_and_file':  object[
                                  {
                                  'id':int,
                                  'name': string,
                                  'certificates_and_file_id': int,
                                  'link': string,
                                  } OR New {
                                  'name': string,
                                  'certificates_and_file_id': int,
                                  'file': file,
                                  }
                              ],                

            
              }
      - Response
        - Success Return 200
          {
            'status': int,
            'code': int,
          }



11- Change Password API 

  > - Request
      - Request type -> POST
     - Parameter 
      {
        'token': string,
        'old_password': string,
        'new_password' string,
      }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }

12- RFQs API 

  > - Request type -> POST

      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            'rfqs': Object[
                  {
                    'id': int,
                    'product_name': string,
                    'category': string,
                    'quantity': int,
                    'country': string,
                    'proposals_number': int,
                    'status': string,
                    'created_at': date,
                    'last_update': date,
                  }
                ],
          }

13- Get RFQ API 

  > - Request type -> POST

     - Parameter 
            {
              'token': string,
              'rfq_id': int,
            }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            data{
              'product_name': string,
              'product_image': string,
              'quantity': int,
              'target_price': double,
              'target_price_for_measure_unit': int,
              'status': string,
              'product_requirement': text,
              'packaging_details': text,
              'seo_title': string,
              'seo_description': text,
              'created_at': date,
              'last_update': date,
              'country': Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
              'port': Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
              'measure_unit': Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
              'category':  Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
              'sector':  Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
              'proposals': Objects[
                {}
                ],
          }
        }

14- Edit RFQ API 
  
  > - Request
      - Request type -> POST
      - Parameter 
            {
              'token': string,
              'rfq_id': int,
              'product_name': string,
              'product_image': file,
              'quantity': int,
              'target_price': double,
              'target_price_for_measure_unit': int,
              'status_id': int,
              'product_requirement': text,
              'packaging_details': text,
              'seo_title': string,
              'seo_description': text,
              'country_id': int,
              'port_id': int,
              'measure_unit_id': int,
              'category_id': int,
              'sector_id': int,
              'comment': text,
            }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }
        }

15- Get All Proposals API 

  > - Request
      - Request type -> POST

      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            'proposals': Object[
                  {
                    'id': int,
                    'rfq': int,
                    'product_name': string,
                    'category': string,
                    'quantity': int,
                    'country': string,
                    'price': double,
                    'exporter_name': string,
                    'status': string,
                    'created_at': date,
                    'last_update': date,
                  }
                ],
          }

16- Get Proposal API 

  > - Request
      - Request type -> POST

      - Parameter 
              {
                'token': string,
                'proposal_id': int,
              }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            data{
              'proposal_id': int,
              'fob_price': bouble,
              'fob_currency': string,
              'fob_unit': string,
              'port': string,
              'country': string,
              'delivery_duration_number': int,
              'delivery_duration_period': string,
              'packaging_details': text,
              'message': text,
              'available_quantity: int'
              'exporter_name': string,
              'file': string,
              'status': string,
              'created_at': date,
              'last_update': date,
              'payment_terms': {
                'name':string,
                'name':string,
              },
              'proposal_acctions': Object[
                {
                  'status': string,
                  'file': string,
                  'details': text, 
                  'created_by': string,
                  'created_at': date,
                }
              ],
            },
                
          }

17- Importer Edit Proposal API 

  > - Request
    - Request type -> POST
    - Parameter 
            {
              'token': string,
              'proposal_id': int,
              'details': text,
              'status': int,
              'file': file,
            }

  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,                
          }
18- Exporter Make Proposal API 
  > -Request 
    - Request type -> POST
    - Parameter 
              {
                'token': string,
                'rfq_id': int,
                'fob_price': bouble,
                'fob_currency': int,
                'fob_unit': int,
                'port': int,
                'country': int,
                'delivery_duration_number': int,
                'delivery_duration_period': int,
                'packaging_details': text,
                'message': text,
                'available_quantity: int'
                'file': string,
                'payment_terms_id': (int,int),
              }
  
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }
19- Exporter Edit Proposal API 

  > - Request
    - Request type -> POST
    - Parameter 
              {
                'token': string,
                'proposal_id': int,
                'fob_price': bouble,
                'fob_currency': int,
                'fob_unit': int,
                'port': int,
                'country': int,
                'delivery_duration_number': int,
                'delivery_duration_period': int,
                'packaging_details': text,
                'message': text,
                'available_quantity: int'
                'file': file,
                'payment_terms_id': (int,int),
                //
                'details': text,
                'status': int,
                'file': file,
              }
  > - Response
    - Success Return 200
          {
            'status': int,
            'code': int,
          }

20- Importer Accept Proposal Send LOI API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'token': string,
                'proposal_id': int,
                'fob_price': bouble,
                'fob_currency': int,
                'fob_unit': int,
                'port': int,
                'country': int,
                'delivery_duration_number': int,
                'delivery_duration_period': int,
                'packaging_details': text,
                'available_quantity: int'
                'file': file,
                'payment_terms_id': (int,int),
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
            }

21- Exporter Accept Proposal LOI API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'token': string,
                'proposal_id': int,
                'status': int,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
            }

22- Importer Proposal Payment API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'token': string,
                'proposal_id': int,
                'details': text,
                'file': file,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
            }

23- Importer RFQ Evaluate API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'token': string,
                'rfq_id': int,
                'comment': text,
                'exporter_rate': int,
                'product_rate': int,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
            }

24- Get Measure Units API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'measures': Object[
                {
                  'id': int,
                  'name': string
                }
              ],
            }

25- Get Payment Terms API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'tearms': Object[
                {
                  'id': int,
                  'name': string
                }
              ],
            }

26- Get Currencies API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'currencies': Object[
                {
                  'id': int,
                  'name': string,
                  'icon': string,
                }
              ],
            }


27- Get Sectors API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'sectors': Object[
                {
                  'id': int,
                  'name': string,
                }
              ],
            }

28- Get Shaping Tearms API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'tearms': Object[
                {
                  'id': int,
                  'name': string,
                }
              ],
            }

29- Get Servicies Provider API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'tearms': Object[
                {
                  'id': int,
                  'name': string,
                  'is_Main': boolean
                }
              ],
            }

30- Get Legal Status API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'legal_status': Object[
                {
                  'id': int,
                  'name': string,
                }
              ],
            }


31- Get Import And Export Percentage API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'percentage': Object[
                {
                  'id': int,
                  'start': int,
                  'end': int,
                }
              ],
            }


32- Get Employees Range API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'range': Object[
                {
                  'id': int,
                  'start': int,
                  'end': int,
                }
              ],
            }
33- Get Certificates And File API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'files': Object[
                {
                  'id': int,
                  'name': string,
                  'icon': string,
                }
              ],
            }     

34- Get Business Type API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'type': Object[
                {
                  'id': int,
                  'name': string,
                  'status': boolean,
                }
              ],
            } 

35- Get Business Type SubCategory API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'subcategory': Object[
                {
                  'id': int,
                  'name': string,
                }
              ],
            } 

36- Get Account Type API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'type': Object[
                {
                  'id': int,
                  'name': string,
                }
              ],
            } 

37- Annual Input And Export Percentage API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'Percentage': Object[
                {
                  'id': int,
                  'start': int,
                  'end': int,
                }
              ],
            } 

38- RFQ Status API 
  > - Request
      - Request type -> GET
      - Parameter 
              {
                'token': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
              'Percentage': Object[
                {
                  'id': int,
                  'name': string,
                  'color': string,
                }
              ],
            } 

39- Importer Make RFQ API 
  
  > - Request
      - Request type -> POST
      - Parameter 
            {
              'token': string,
              'product_name': string,
              'product_image': file,
              'quantity': int,
              'target_price': double,
              'target_price_for_measure_unit': int,
              'status_id': int,
              'product_requirement': text,
              'packaging_details': text,
              'seo_title': string,
              'seo_description': text,
              'country_id': int,
              'port_id': int,
              'measure_unit_id': int,
              'category_id': int,
              'sector_id': int,
              'comment': text,
              'rfq_status': int,

            // If RFQ status 1 = Privade send Exporter and Product ID
              'exporter_id': int,
              'product_id': int,
            }
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }
        }
40- Exporter Make Proposal API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'rfq_id': int,
                  'fob_price': bouble,
                  'fob_currency': int,
                  'fob_unit': int,
                  'port': int,
                  'country': int,
                  'delivery_duration_number': int,
                  'packaging_details': text,
                  'message': text,
                  'available_quantity: int'
                  'file': string,
                  'payment_terms_id': (int,int),
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }

41- Forget Password API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'email': string,
              }
  > - Response
      - Success Return 200
            {
             // send verification link by email 
              'status': int,
              'code': int,
            } 

42- Reset Password API 
  > - Request
      - Request type -> POST
      - Parameter 
              {
                'email': string,
                'link' : string,
                'new_Password': string,
              }
  > - Response
      - Success Return 200
            {
              'status': int,
              'code': int,
            } 

43- Exporter Unlock RFQ API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'rfq_id': int,
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            'data': {
              'product_name': string,
              'product_image': string,
              'quantity': int,
              'target_price': double,
              'target_price_for_measure_unit': int,
              'product_requirement': text,
              'packaging_details': text,
              'created_at': date,
              'country': string,
              'port': string,
              'measure_unit': string,
              'category': string,
              'sector': string,
            }
          }

44- Provider Make Serviece proposal API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'Proposal_id': int,
                  'details': text,
                  'total_price': double,
                  'currency_id': int,
                  'sevices': [
                    {
                      'service_id': id,
                      'price': double,
                      'duraction': int,
                      'details': text,
                    }
                  ],
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }

45- Exporter View Providers Serviece proposals API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'Proposal_id': int,
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            'proposals': {
              'id': int,
              'provider_name': string,
              'details': text,
              'total_price': double,
              'currency': string,
              'status': string,
              'delivry_duration': int,
              'sevices': [
                {
                  'service_name': string,
                  'price': double,
                }
              ],
            }
          }


46- Get Providers Serviece proposal API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'service_provider_Proposal_id': int,
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
            'proposal': {
                'Proposal_id': int,
                'details': text,
                'total_price': double,
                'currency_id': int,
                'sevices': [
                  {
                    'service_id': id,
                    'price': double,
                    'duraction': int,
                    'details': text,
                  }
                ],
            }
          }

47- Provider Edit Serviece proposal API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'service_provider_proposal_id': int,
                  'details': text,
                  'total_price': double,
                  'currency_id': int,
                  'sevices': [
                    {
                      'service_id': id,
                      'price': double,
                      'duraction': int,
                      'details': text,
                    }
                  ],
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          }

48- Exporter Edit Provider Serviece proposal API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'service_provider_proposal_id': int,
                  'message': text,
                  'status_id': int,
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          } 

49- Provider Update Provider Serviece proposal Status API 
  > - Request 
      - Request type -> POST
      - Parameter 
                {
                  'token': string,
                  'service_provider_proposal_id': int,
                  'message': text,
                  'status_id': int,
                }
    
  > - Response
      - Success Return 200
          {
            'status': int,
            'code': int,
          } 
