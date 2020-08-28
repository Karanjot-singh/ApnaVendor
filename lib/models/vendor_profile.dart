class VendorProfile{
  String name;
  String locality;
  String category;
  String contact;
  String workingHours;
  VendorProfile({this.name,this.category, this.locality, this.contact, this.workingHours});
}
class VendorList{
  List<VendorProfile> vendorList;

  VendorList({this.vendorList});
}