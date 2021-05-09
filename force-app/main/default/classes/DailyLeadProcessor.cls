global class DailyLeadProcessor implements Schedulable{
    global void execute(SchedulableContext sc){
        List<Lead> ld = new List<Lead>();
        
        for(Lead l: [Select id from Lead where LeadSource= NULL limit 200]){
            l.LeadSource='Dreamforce';
            ld.add(l);
        }
        update ld;
    }
}