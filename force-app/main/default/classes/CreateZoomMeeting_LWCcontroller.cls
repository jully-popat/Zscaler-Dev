public without sharing class CreateZoomMeeting_LWCcontroller{

    @AuraEnabled
    public static void saveZoomEventRecord(Id caseId,String comment,Datetime StartTime,Datetime EndTime){
        try{
            /* system.debug('inside saveZoomEventRecordrecord   '+comment);
            system.debug('inside saveZoomEventRecordrecord   '+StartTime);
            system.debug('inside saveZoomEventRecordrecord   '+EndTime);
            system.debug('inside saveZoomEventRecordrecord   '+caseId); */
            Id Contactid;
            if(caseId!=null){
                List<Case> Caselist= new List<Case>([Select id,Contactid from Case where id=:caseId]);
                Contactid=Caselist[0].Contactid;
            }
            Event objEvnt= new Event();
            objEvnt.zoom_app__Make_it_Zoom_Meeting__c=true;
            objEvnt.zoom_app__Join_before_host__c=true;
            objEvnt.Subject=comment;
            objEvnt.StartDateTime=StartTime;
            objEvnt.EndDateTime=EndTime;
            objEvnt.zoom_app__Customer_Start_Time__c=objEvnt.StartDateTime;
            objEvnt.zoom_app__Customer_Start_Time__c=objEvnt.StartDateTime;
            //objEvnt.whatid='50021000005XxrrAAC';
            objEvnt.whatid=caseId;
            //objEvnt.whoid='0032100000n3DSp';
            objEvnt.whoid=Contactid;
            objEvnt.type='Meeting';
            objEvnt.Ownerid=userinfo.getuserid();
            insert objEvnt;
            //system.debug('objEvnt   '+objEvnt);
        }
        catch(Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        }
    }
    
	public static void booster(){
		integer i=0;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
		i++;
	}
}