public class ParkLocator {
	public static String[] country (String Countryname) {
        ParkService.ParksImplPort  park = new ParkService.ParksImplPort();
         return park.byCountry(Countryname);
    }
}