public class DMLHelper {
    public static void updateOperations(String lead_name) {
    // Update rating to cold if lead_name is not null and not empty
    if (lead_name != null && lead_name != '') {
        lead_name += '%';
        
        // Retrieve leads with the specified last name pattern
        List<Lead> lst_leads = [SELECT Id, LastName FROM Lead WHERE LastName LIKE :lead_name];
        
        System.debug('No of Records Returned: ' + lst_leads.size());
        
        // Check if the list is not empty and update the rating in the same list
        if (!lst_leads.isEmpty()) {
            for (Lead l : lst_leads) {
                l.Rating = 'Cold'; // Update the rating
            }
            // Perform a single update operation
            update lst_leads; 
        }
    }
}

}