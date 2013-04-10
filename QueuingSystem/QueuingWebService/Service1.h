#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class Service1_HelloWorld;
@class Service1_HelloWorldResponse;
@class Service1_AddNewCustomer;
@class Service1_AddNewCustomerResponse;
@class Service1_AddNewCustomerGetId;
@class Service1_AddNewCustomerGetIdResponse;
@class Service1_GetCustomerCount;
@class Service1_GetCustomerCountResponse;
@class Service1_GetCustomerList;
@class Service1_GetCustomerListResponse;
@class Service1_Sigbn;
@class Service1_SigbnResponse;
@class Service1_Delay;
@class Service1_DelayResponse;
@class Service1_GetCountBeforeMe;
@class Service1_GetCountBeforeMeResponse;
@interface Service1_HelloWorld : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_HelloWorld *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_HelloWorldResponse : NSObject {
	
/* elements */
	NSString * HelloWorldResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_HelloWorldResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * HelloWorldResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_AddNewCustomer : NSObject {
	
/* elements */
	NSString * tel;
	NSString * count;
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_AddNewCustomer *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * tel;
@property (retain) NSString * count;
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_AddNewCustomerResponse : NSObject {
	
/* elements */
	USBoolean * AddNewCustomerResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_AddNewCustomerResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * AddNewCustomerResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_AddNewCustomerGetId : NSObject {
	
/* elements */
	NSString * tel;
	NSString * count;
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_AddNewCustomerGetId *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * tel;
@property (retain) NSString * count;
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_AddNewCustomerGetIdResponse : NSObject {
	
/* elements */
	NSString * AddNewCustomerGetIdResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_AddNewCustomerGetIdResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * AddNewCustomerGetIdResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCustomerCount : NSObject {
	
/* elements */
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCustomerCount *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCustomerCountResponse : NSObject {
	
/* elements */
	NSNumber * GetCustomerCountResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCustomerCountResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * GetCustomerCountResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCustomerList : NSObject {
	
/* elements */
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCustomerList *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCustomerListResponse : NSObject {
	
/* elements */
	NSString * GetCustomerListResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCustomerListResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * GetCustomerListResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_Sigbn : NSObject {
	
/* elements */
	NSString * customerId;
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_Sigbn *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * customerId;
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_SigbnResponse : NSObject {
	
/* elements */
	USBoolean * SigbnResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_SigbnResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * SigbnResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_Delay : NSObject {
	
/* elements */
	NSString * customerId;
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_Delay *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * customerId;
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_DelayResponse : NSObject {
	
/* elements */
	USBoolean * DelayResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_DelayResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * DelayResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCountBeforeMe : NSObject {
	
/* elements */
	NSString * customerId;
	NSString * listNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCountBeforeMe *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * customerId;
@property (retain) NSString * listNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface Service1_GetCountBeforeMeResponse : NSObject {
	
/* elements */
	NSNumber * GetCountBeforeMeResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (Service1_GetCountBeforeMeResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * GetCountBeforeMeResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "Service1.h"
@class Service1SoapBinding;
@class Service1Soap12Binding;
@interface Service1 : NSObject {
	
}
+ (Service1SoapBinding *)Service1SoapBinding;
+ (Service1Soap12Binding *)Service1Soap12Binding;
@end
@class Service1SoapBindingResponse;
@class Service1SoapBindingOperation;
@protocol Service1SoapBindingResponseDelegate <NSObject>
- (void) operation:(Service1SoapBindingOperation *)operation completedWithResponse:(Service1SoapBindingResponse *)response;
@end
@interface Service1SoapBinding : NSObject <Service1SoapBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(Service1SoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (Service1SoapBindingResponse *)HelloWorldUsingParameters:(Service1_HelloWorld *)aParameters ;
- (void)HelloWorldAsyncUsingParameters:(Service1_HelloWorld *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)AddNewCustomerUsingParameters:(Service1_AddNewCustomer *)aParameters ;
- (void)AddNewCustomerAsyncUsingParameters:(Service1_AddNewCustomer *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)AddNewCustomerGetIdUsingParameters:(Service1_AddNewCustomerGetId *)aParameters ;
- (void)AddNewCustomerGetIdAsyncUsingParameters:(Service1_AddNewCustomerGetId *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)GetCustomerCountUsingParameters:(Service1_GetCustomerCount *)aParameters ;
- (void)GetCustomerCountAsyncUsingParameters:(Service1_GetCustomerCount *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)GetCustomerListUsingParameters:(Service1_GetCustomerList *)aParameters ;
- (void)GetCustomerListAsyncUsingParameters:(Service1_GetCustomerList *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)SigbnUsingParameters:(Service1_Sigbn *)aParameters ;
- (void)SigbnAsyncUsingParameters:(Service1_Sigbn *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)DelayUsingParameters:(Service1_Delay *)aParameters ;
- (void)DelayAsyncUsingParameters:(Service1_Delay *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
- (Service1SoapBindingResponse *)GetCountBeforeMeUsingParameters:(Service1_GetCountBeforeMe *)aParameters ;
- (void)GetCountBeforeMeAsyncUsingParameters:(Service1_GetCountBeforeMe *)aParameters  delegate:(id<Service1SoapBindingResponseDelegate>)responseDelegate;
@end
@interface Service1SoapBindingOperation : NSOperation {
	Service1SoapBinding *binding;
	Service1SoapBindingResponse *response;
	id<Service1SoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) Service1SoapBinding *binding;
@property (readonly) Service1SoapBindingResponse *response;
@property (nonatomic, assign) id<Service1SoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate;
@end
@interface Service1SoapBinding_HelloWorld : Service1SoapBindingOperation {
	Service1_HelloWorld * parameters;
}
@property (retain) Service1_HelloWorld * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_HelloWorld *)aParameters
;
@end
@interface Service1SoapBinding_AddNewCustomer : Service1SoapBindingOperation {
	Service1_AddNewCustomer * parameters;
}
@property (retain) Service1_AddNewCustomer * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_AddNewCustomer *)aParameters
;
@end
@interface Service1SoapBinding_AddNewCustomerGetId : Service1SoapBindingOperation {
	Service1_AddNewCustomerGetId * parameters;
}
@property (retain) Service1_AddNewCustomerGetId * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_AddNewCustomerGetId *)aParameters
;
@end
@interface Service1SoapBinding_GetCustomerCount : Service1SoapBindingOperation {
	Service1_GetCustomerCount * parameters;
}
@property (retain) Service1_GetCustomerCount * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCustomerCount *)aParameters
;
@end
@interface Service1SoapBinding_GetCustomerList : Service1SoapBindingOperation {
	Service1_GetCustomerList * parameters;
}
@property (retain) Service1_GetCustomerList * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCustomerList *)aParameters
;
@end
@interface Service1SoapBinding_Sigbn : Service1SoapBindingOperation {
	Service1_Sigbn * parameters;
}
@property (retain) Service1_Sigbn * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_Sigbn *)aParameters
;
@end
@interface Service1SoapBinding_Delay : Service1SoapBindingOperation {
	Service1_Delay * parameters;
}
@property (retain) Service1_Delay * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_Delay *)aParameters
;
@end
@interface Service1SoapBinding_GetCountBeforeMe : Service1SoapBindingOperation {
	Service1_GetCountBeforeMe * parameters;
}
@property (retain) Service1_GetCountBeforeMe * parameters;
- (id)initWithBinding:(Service1SoapBinding *)aBinding delegate:(id<Service1SoapBindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCountBeforeMe *)aParameters
;
@end
@interface Service1SoapBinding_envelope : NSObject {
}
+ (Service1SoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface Service1SoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
@class Service1Soap12BindingResponse;
@class Service1Soap12BindingOperation;
@protocol Service1Soap12BindingResponseDelegate <NSObject>
- (void) operation:(Service1Soap12BindingOperation *)operation completedWithResponse:(Service1Soap12BindingResponse *)response;
@end
@interface Service1Soap12Binding : NSObject <Service1Soap12BindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(Service1Soap12BindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (Service1Soap12BindingResponse *)HelloWorldUsingParameters:(Service1_HelloWorld *)aParameters ;
- (void)HelloWorldAsyncUsingParameters:(Service1_HelloWorld *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)AddNewCustomerUsingParameters:(Service1_AddNewCustomer *)aParameters ;
- (void)AddNewCustomerAsyncUsingParameters:(Service1_AddNewCustomer *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)AddNewCustomerGetIdUsingParameters:(Service1_AddNewCustomerGetId *)aParameters ;
- (void)AddNewCustomerGetIdAsyncUsingParameters:(Service1_AddNewCustomerGetId *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)GetCustomerCountUsingParameters:(Service1_GetCustomerCount *)aParameters ;
- (void)GetCustomerCountAsyncUsingParameters:(Service1_GetCustomerCount *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)GetCustomerListUsingParameters:(Service1_GetCustomerList *)aParameters ;
- (void)GetCustomerListAsyncUsingParameters:(Service1_GetCustomerList *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)SigbnUsingParameters:(Service1_Sigbn *)aParameters ;
- (void)SigbnAsyncUsingParameters:(Service1_Sigbn *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)DelayUsingParameters:(Service1_Delay *)aParameters ;
- (void)DelayAsyncUsingParameters:(Service1_Delay *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
- (Service1Soap12BindingResponse *)GetCountBeforeMeUsingParameters:(Service1_GetCountBeforeMe *)aParameters ;
- (void)GetCountBeforeMeAsyncUsingParameters:(Service1_GetCountBeforeMe *)aParameters  delegate:(id<Service1Soap12BindingResponseDelegate>)responseDelegate;
@end
@interface Service1Soap12BindingOperation : NSOperation {
	Service1Soap12Binding *binding;
	Service1Soap12BindingResponse *response;
	id<Service1Soap12BindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) Service1Soap12Binding *binding;
@property (readonly) Service1Soap12BindingResponse *response;
@property (nonatomic, assign) id<Service1Soap12BindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate;
@end
@interface Service1Soap12Binding_HelloWorld : Service1Soap12BindingOperation {
	Service1_HelloWorld * parameters;
}
@property (retain) Service1_HelloWorld * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_HelloWorld *)aParameters
;
@end
@interface Service1Soap12Binding_AddNewCustomer : Service1Soap12BindingOperation {
	Service1_AddNewCustomer * parameters;
}
@property (retain) Service1_AddNewCustomer * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_AddNewCustomer *)aParameters
;
@end
@interface Service1Soap12Binding_AddNewCustomerGetId : Service1Soap12BindingOperation {
	Service1_AddNewCustomerGetId * parameters;
}
@property (retain) Service1_AddNewCustomerGetId * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_AddNewCustomerGetId *)aParameters
;
@end
@interface Service1Soap12Binding_GetCustomerCount : Service1Soap12BindingOperation {
	Service1_GetCustomerCount * parameters;
}
@property (retain) Service1_GetCustomerCount * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCustomerCount *)aParameters
;
@end
@interface Service1Soap12Binding_GetCustomerList : Service1Soap12BindingOperation {
	Service1_GetCustomerList * parameters;
}
@property (retain) Service1_GetCustomerList * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCustomerList *)aParameters
;
@end
@interface Service1Soap12Binding_Sigbn : Service1Soap12BindingOperation {
	Service1_Sigbn * parameters;
}
@property (retain) Service1_Sigbn * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_Sigbn *)aParameters
;
@end
@interface Service1Soap12Binding_Delay : Service1Soap12BindingOperation {
	Service1_Delay * parameters;
}
@property (retain) Service1_Delay * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_Delay *)aParameters
;
@end
@interface Service1Soap12Binding_GetCountBeforeMe : Service1Soap12BindingOperation {
	Service1_GetCountBeforeMe * parameters;
}
@property (retain) Service1_GetCountBeforeMe * parameters;
- (id)initWithBinding:(Service1Soap12Binding *)aBinding delegate:(id<Service1Soap12BindingResponseDelegate>)aDelegate
	parameters:(Service1_GetCountBeforeMe *)aParameters
;
@end
@interface Service1Soap12Binding_envelope : NSObject {
}
+ (Service1Soap12Binding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface Service1Soap12BindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
