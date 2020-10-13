import 'package:Scaleindia/Pages/EmployeeDashBoard/employeeRegister_viewmodel.dart';
import 'package:Scaleindia/widgets/busy_button.dart';
import 'package:Scaleindia/widgets/expansion_list.dart';
import 'package:Scaleindia/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmployeeRegisterWidget extends StatefulWidget {
  @override
  _EmployeeRegisterWidgetState createState() => _EmployeeRegisterWidgetState();
}

class _EmployeeRegisterWidgetState extends State<EmployeeRegisterWidget> {
  final List<String> gender = ['Male', 'Female', 'Other'];

  Map<String, String> stateCity = {
    "Visakhapatnam": "Andhra Pradesh",
    "Vijayawada": "Andhra Pradesh",
    "Guntur": "Andhra Pradesh",
    "Nellore": "Andhra Pradesh",
    "Kurnool": "Andhra Pradesh",
    "Kakinada": "Andhra Pradesh",
    "Rajamahendravaram	": "Andhra Pradesh",
    "Kadapa": "Andhra Pradesh",
    "Tirupati": "Andhra Pradesh",
    "Anantapuram": "Andhra Pradesh",
    "Vizianagaram": "Andhra Pradesh",
    "Eluru": "Andhra Pradesh",
    "Nandyal": "Andhra Pradesh",
    "Ongole": "Andhra Pradesh",
    "Adoni": "Andhra Pradesh",
    "Madanapalle": "Andhra Pradesh",
    "Machilipatnam": "Andhra Pradesh",
    "Tenali": "Andhra Pradesh",
    "Proddatur": "Andhra Pradesh",
    "Chittoor": "Andhra Pradesh",
    "Hindupur": "Andhra Pradesh",
    "Srikakulam": "Andhra Pradesh",
    "Bhimavaram": "Andhra Pradesh",
    "Guntakal": "Andhra Pradesh",
    "Dharmavaram": "Andhra Pradesh",
    "Gudivada": "Andhra Pradesh",
    "Narasaraopet": "Andhra Pradesh",
    "Tadipatri": "Andhra Pradesh",
    "Mangalagiri": "Andhra Pradesh",
    "Tadepalligudem": "Andhra Pradesh",
    "Amaravati": "Andhra Pradesh",
    "Chilakaluripet": "Andhra Pradesh",
    "Chirala": "Andhra Pradesh",
    "Naharlagun": "Arunachal Pradesh",
    "Pasighat": "Arunachal Pradesh",
    "Barpeta": "Assam",
    "Bongaigaon City": "Assam",
    "Dhubri": "Assam",
    "Dibrugarh": "Assam",
    "Diphu": "Assam",
    "Goalpara": "Assam",
    "Guwahati": "Assam",
    "Jorhat": "Assam",
    "Karimganj": "Assam",
    "Lanka": "Assam",
    "Lumding": "Assam",
    "Mangaldoi": "Assam",
    "Mankachar": "Assam",
    "Margherita": "Assam",
    "Mariani": "Assam",
    "Marigaon": "Assam",
    "Nagaon": "Assam",
    "Nalbari": "Assam",
    "North Lakhimpur": "Assam",
    "Rangia": "Assam",
    "Sibsagar": "Assam",
    "Silapathar": "Assam",
    "Silchar": "Assam",
    "Tezpur": "Assam",
    "Tinsukia": "Assam",
    "Araria": "Bihar",
    "Arrah": "Bihar",
    "Arwal": "Bihar",
    "Asarganj": "Bihar",
    "Aurangabad": "Bihar",
    "Bagaha": "Bihar",
    "Barh": "Bihar",
    "Begusarai": "Bihar",
    "Bettiah": "Bihar",
    "Bhabua": "Bihar",
    "Bhagalpur": "Bihar",
    "Buxar": "Bihar",
    "Chhapra": "Bihar",
    "Darbhanga": "Bihar",
    "Dehri-on-Sone": "Bihar",
    "Dumraon": "Bihar",
    "Forbesganj": "Bihar",
    "Gaya": "Bihar",
    "Gopalganj": "Bihar",
    "Hajipur": "Bihar",
    "Jamalpur": "Bihar",
    "Jamui": "Bihar",
    "Jehanabad": "Bihar",
    "Katihar": "Bihar",
    "Kishanganj": "Bihar",
    "Lakhisarai": "Bihar",
    "Lalganj": "Bihar",
    "Madhepura": "Bihar",
    "Madhubani": "Bihar",
    "Maharajganj": "Bihar",
    "Mahnar Bazar": "Bihar",
    "Makhdumpur": "Bihar",
    "Maner": "Bihar",
    "Manihari": "Bihar",
    "Marhaura": "Bihar",
    "Masaurhi": "Bihar",
    "Mirganj": "Bihar",
    "Mokameh": "Bihar",
    "Motihari": "Bihar",
    "Motipur": "Bihar",
    "Munger": "Bihar",
    "Murliganj": "Bihar",
    "Muzaffarpur": "Bihar",
    "Narkatiaganj": "Bihar",
    "Naugachhia": "Bihar",
    "Nawada": "Bihar",
    "Nokha": "Bihar",
    "Patna": "Bihar",
    "Piro": "Bihar",
    "Purnia": "Bihar",
    "Rafiganj": "Bihar",
    "Rajgir": "Bihar",
    "Raxaul Bazar": "Bihar",
    "Revelganj": "Bihar",
    "Rosera": "Bihar",
    "Saharsa": "Bihar",
    "Samastipur": "Bihar",
    "Sasaram": "Bihar",
    "Sheikhpura": "Bihar",
    "Sheohar": "Bihar",
    "Sherghati": "Bihar",
    "Silao": "Bihar",
    "Sitamarhi": "Bihar",
    "Siwan": "Bihar",
    "Sonepur": "Bihar",
    "Sugauli": "Bihar",
    "Sultanganj": "Bihar",
    "Supaul": "Bihar",
    "Warisaliganj": "Bihar",
    "Chandigarh*": "Chandigarh",
    "Ambikapur": "Chhattisgarh","Bhatapara": "Chhattisgarh","Bhilai Nagar": "Chhattisgarh","Bilaspur": "Chhattisgarh","Chirmiri": "Chhattisgarh","Dalli-Rajhara": "Chhattisgarh","Dhamtari": "Chhattisgarh","Durg": "Chhattisgarh","Jagdalpur": "Chhattisgarh","Korba": "Chhattisgarh","Mahasamund": "Chhattisgarh","Manendragarh": "Chhattisgarh","Mungeli": "Chhattisgarh","Naila Janjgir": "Chhattisgarh","Raigarh": "Chhattisgarh","Raipur*": "Chhattisgarh","Rajnandgaon": "Chhattisgarh","Sakti": "Chhattisgarh","Tilda Newra": "Chhattisgarh",
    "Silvassa*": "Dadra and Nagar Haveli",
    "Delhi":"Delhi","New Delhi*":"Delhi","Mapusa":"Goa","Margao":"Goa","Marmagao":"Goa","Panaji*":"Goa",
    "Adalaj":"Gujarat","Ahmedabad":"Gujarat","Amreli":"Gujarat","Anand":"Gujarat","Anjar":"Gujarat","Ankleshwar":"Gujarat","Bharuch":"Gujarat","Bhavnagar":"Gujarat","Bhuj":"Gujarat","Deesa":"Gujarat","Dhoraji":"Gujarat","Godhra":"Gujarat","Jamnagar":"Gujarat","Kadi":"Gujarat","Kapadvanj":"Gujarat","Keshod":"Gujarat","Khambhat":"Gujarat","Lathi":"Gujarat","Limbdi":"Gujarat","Lunawada":"Gujarat","Mahesana":"Gujarat","Mahuva":"Gujarat","Manavadar":"Gujarat","Mandvi":"Gujarat","Mangrol":"Gujarat","Mansa":"Gujarat","Mahemdabad":"Gujarat","Modasa":"Gujarat","Morvi":"Gujarat","Nadiad":"Gujarat","Navsari":"Gujarat","Padra":"Gujarat","Palanpur":"Gujarat","Palitana":"Gujarat","Pardi":"Gujarat","Patan":"Gujarat","Petlad":"Gujarat","Porbandar":"Gujarat","Radhanpur":"Gujarat","Rajkot":"Gujarat","Rajpipla":"Gujarat","Rajula":"Gujarat","Ranavav":"Gujarat","Rapar":"Gujarat","Salaya":"Gujarat","Sanand":"Gujarat","Savarkundla":"Gujarat","Sidhpur":"Gujarat","Sihor":"Gujarat","Songadh":"Gujarat","Surat":"Gujarat","Talaja":"Gujarat","Thangadh":"Gujarat","Tharad":"Gujarat","Umbergaon":"Gujarat","Umreth":"Gujarat","Una":"Gujarat","Unjha":"Gujarat","Upleta":"Gujarat","Vadnagar":"Gujarat","Vadodara":"Gujarat","Valsad":"Gujarat","Vapi":"Gujarat","Veraval":"Gujarat","Vijapur":"Gujarat","Viramgam":"Gujarat","Visnagar":"Gujarat","Vyara":"Gujarat","Wadhwan":"Gujarat","Wankaner":"Gujarat",
    "Bahadurgarh":"Haryana","Bhiwani":"Haryana","Charkhi Dadri":"Haryana","Faridabad":"Haryana","Fatehabad":"Haryana","Gohana":"Haryana","Gurgaon":"Haryana","Hansi":"Haryana","Hisar":"Haryana","Jind":"Haryana","Kaithal":"Haryana","Karnal":"Haryana","Ladwa":"Haryana","Mahendragarh":"Haryana","Mandi Dabwali":"Haryana","Narnaul":"Haryana","Narwana":"Haryana","Palwal":"Haryana","Panchkula":"Haryana","Panipat":"Haryana","Pehowa":"Haryana","Pinjore":"Haryana","Rania":"Haryana","Ratia":"Haryana","Rewari":"Haryana","Rohtak":"Haryana","Safidon":"Haryana","Samalkha":"Haryana","Sarsod":"Haryana","Shahbad":"Haryana","Sirsa":"Haryana","Sohna":"Haryana","Sonipat":"Haryana","Taraori":"Haryana","Thanesar":"Haryana","Tohana":"Haryana","Yamunanagar":"Haryana",
    "Mandi":"Himachal Pradesh","Nahan":"Himachal Pradesh","Palampur":"Himachal Pradesh","Shimla*":"Himachal Pradesh","Solan":"Himachal Pradesh","Sundarnagar":"Himachal Pradesh",
    "Anantnag":"Jammu and Kashmir","Baramula":"Jammu and Kashmir","Jammu":"Jammu and Kashmir","Kathua":"Jammu and Kashmir","Punch":"Jammu and Kashmir","Rajauri":"Jammu and Kashmir","Sopore":"Jammu and Kashmir","Srinagar*":"Jammu and Kashmir","Udhampur":"Jammu and Kashmir",
    "Adityapur":"Jharkhand","Bokaro Steel City":"Jharkhand","Chaibasa":"Jharkhand","Chatra":"Jharkhand","Chirkunda":"Jharkhand","Medininagar (Daltonganj)":"Jharkhand","Deoghar":"Jharkhand","Dhanbad":"Jharkhand","Dumka":"Jharkhand","Giridih":"Jharkhand","Gumia":"Jharkhand","Hazaribag":"Jharkhand","Jamshedpur":"Jharkhand","Jhumri Tilaiya":"Jharkhand","Lohardaga":"Jharkhand","Madhupur":"Jharkhand","Mihijam":"Jharkhand","Musabani":"Jharkhand","Pakaur":"Jharkhand","Patratu":"Jharkhand","Phusro":"Jharkhand","Ramgarh":"Jharkhand","Ranchi*":"Jharkhand","Sahibganj":"Jharkhand","Saunda":"Jharkhand","Simdega":"Jharkhand","Tenu dam-cum-Kathhara":"Jharkhand",
    "Adyar":"Karnataka","Afzalpur":"Karnataka","Arsikere":"Karnataka","Athni":"Karnataka","Bengaluru":"Karnataka","Belagavi":"Karnataka","Ballari":"Karnataka","Chikkamagaluru":"Karnataka","Davanagere":"Karnataka","Gokak":"Karnataka","Hubli-Dharwad":"Karnataka","Karwar":"Karnataka","Kolar":"Karnataka","Lakshmeshwar":"Karnataka","Lingsugur":"Karnataka","Maddur":"Karnataka","Madhugiri":"Karnataka","Madikeri":"Karnataka","Magadi":"Karnataka","Mahalingapura":"Karnataka","Malavalli":"Karnataka","Malur":"Karnataka","Mandya":"Karnataka","Mangaluru":"Karnataka","Manvi":"Karnataka","Mudalagi":"Karnataka","Mudabidri":"Karnataka","Muddebihal":"Karnataka","Mudhol":"Karnataka","Mulbagal":"Karnataka","Mundargi":"Karnataka","Nanjangud":"Karnataka","Nargund":"Karnataka","Navalgund":"Karnataka","Nelamangala":"Karnataka","Pavagada":"Karnataka","Piriyapatna":"Karnataka","Puttur":"Karnataka","Rabkavi Banhatti":"Karnataka","Raayachuru":"Karnataka","Ranebennuru":"Karnataka","Ramanagaram":"Karnataka","Ramdurg":"Karnataka","Ranibennur":"Karnataka","Robertson Pet":"Karnataka","Ron":"Karnataka","Sadalagi":"Karnataka","Sagara":"Karnataka","Sakaleshapura":"Karnataka","Sindagi":"Karnataka","Sanduru":"Karnataka","Sankeshwara":"Karnataka","Saundatti-Yellamma":"Karnataka","Savanur":"Karnataka","Sedam":"Karnataka","Shahabad":"Karnataka","Shahpur":"Karnataka","Shiggaon":"Karnataka","Shikaripur":"Karnataka","Shivamogga":"Karnataka","Surapura":"Karnataka","Shrirangapattana":"Karnataka","Sidlaghatta":"Karnataka","Sindhagi":"Karnataka","Sindhnur":"Karnataka","Sira":"Karnataka","Sirsi":"Karnataka","Siruguppa":"Karnataka","Srinivaspur":"Karnataka","Tarikere":"Karnataka","Tekkalakote":"Karnataka","Terdal":"Karnataka","Talikota":"Karnataka","Tiptur":"Karnataka","Tumkur":"Karnataka","Udupi":"Karnataka","Vijayapura":"Karnataka","Wadi":"Karnataka","Yadgir":"Karnataka",
    "Adoor":"Kerala","Alappuzha":"Kerala","Attingal":"Kerala","Chalakudy":"Kerala","Changanassery":"Kerala","Cherthala":"Kerala","Chittur-Thathamangalam":"Kerala","Guruvayoor":"Kerala","Kanhangad":"Kerala","Kannur":"Kerala","Kasaragod":"Kerala","Kayamkulam":"Kerala","Kochi":"Kerala","Kodungallur":"Kerala","Kollam":"Kerala","Kottayam":"Kerala","Kozhikode":"Kerala","Kunnamkulam":"Kerala","Malappuram":"Kerala","Mattannur":"Kerala","Mavelikkara":"Kerala","Mavoor":"Kerala","Muvattupuzha":"Kerala","Nedumangad":"Kerala","Neyyattinkara":"Kerala","Nilambur":"Kerala","Ottappalam":"Kerala","Palai":"Kerala","Palakkad":"Kerala","Panamattom":"Kerala","Panniyannur":"Kerala","Pappinisseri":"Kerala","Paravoor":"Kerala","Pathanamthitta":"Kerala","Peringathur":"Kerala","Perinthalmanna":"Kerala","Perumbavoor":"Kerala","Ponnani":"Kerala","Punalur":"Kerala","Puthuppally":"Kerala","Koyilandy":"Kerala","Shoranur":"Kerala","Taliparamba":"Kerala","Thiruvalla":"Kerala","Thiruvananthapuram":"Kerala","Thodupuzha":"Kerala","Thrissur":"Kerala","Tirur":"Kerala","Vaikom":"Kerala","Varkala":"Kerala","Vatakara":"Kerala",
    "Drass Ladakh":"Ladakh","Leh Ladakh":"Ladakh","Kargil Ladakh":"Ladakh","Suru Valley Ladakh":"Ladakh","Zanskar Ladakh":"Ladakh","Padum Ladakh":"Ladakh",
    "Alirajpur":"Madhya Pradesh","Ashok Nagar":"Madhya Pradesh","Balaghat":"Madhya Pradesh","Bhopal":"Madhya Pradesh","Ganjbasoda":"Madhya Pradesh","Gwalior":"Madhya Pradesh","Indore":"Madhya Pradesh","Itarsi":"Madhya Pradesh","Jabalpur":"Madhya Pradesh","Lahar":"Madhya Pradesh","Maharajpur":"Madhya Pradesh","Mahidpur":"Madhya Pradesh","Maihar":"Madhya Pradesh","Malaj Khand":"Madhya Pradesh","Manasa":"Madhya Pradesh","Manawar":"Madhya Pradesh","Mandideep":"Madhya Pradesh","Mandla":"Madhya Pradesh","Mandsaur":"Madhya Pradesh","Mauganj":"Madhya Pradesh","Mhow Cantonment":"Madhya Pradesh","Mhowgaon":"Madhya Pradesh","Morena":"Madhya Pradesh","Multai":"Madhya Pradesh","Mundi":"Madhya Pradesh","Murwara (Katni)":"Madhya Pradesh","Nagda":"Madhya Pradesh","Nainpur":"Madhya Pradesh","Narsinghgarh":"Madhya Pradesh","Neemuch":"Madhya Pradesh","Nepanagar":"Madhya Pradesh","Niwari":"Madhya Pradesh","Nowgong":"Madhya Pradesh","Nowrozabad (Khodargama)":"Madhya Pradesh","Pachore":"Madhya Pradesh","Pali":"Madhya Pradesh","Panagar":"Madhya Pradesh","Pandhurna":"Madhya Pradesh","Panna":"Madhya Pradesh","Pasan":"Madhya Pradesh","Pipariya":"Madhya Pradesh","Pithampur":"Madhya Pradesh","Porsa":"Madhya Pradesh","Prithvipur":"Madhya Pradesh","Raghogarh-Vijaypur":"Madhya Pradesh","Rahatgarh":"Madhya Pradesh","Raisen":"Madhya Pradesh","Rajgarh":"Madhya Pradesh","Ratlam":"Madhya Pradesh","Rau":"Madhya Pradesh","Rehli":"Madhya Pradesh","Rewa":"Madhya Pradesh","Sabalgarh":"Madhya Pradesh","Sagar":"Madhya Pradesh","Sanawad":"Madhya Pradesh","Sarangpur":"Madhya Pradesh","Sarni":"Madhya Pradesh","Satna":"Madhya Pradesh","Sausar":"Madhya Pradesh","Sehore":"Madhya Pradesh","Sendhwa":"Madhya Pradesh","Seoni":"Madhya Pradesh","Seoni-Malwa":"Madhya Pradesh","Shahdol":"Madhya Pradesh","Shajapur":"Madhya Pradesh","Shamgarh":"Madhya Pradesh","Sheopur":"Madhya Pradesh","Shivpuri":"Madhya Pradesh","Shujalpur":"Madhya Pradesh","Sidhi":"Madhya Pradesh","Sihora":"Madhya Pradesh","Singrauli":"Madhya Pradesh","Sironj":"Madhya Pradesh","Sohagpur":"Madhya Pradesh","Tarana":"Madhya Pradesh","Tikamgarh":"Madhya Pradesh","Ujjain":"Madhya Pradesh","Umaria":"Madhya Pradesh","Vidisha":"Madhya Pradesh","Vijaypur":"Madhya Pradesh","Wara Seoni":"Madhya Pradesh",
    "Ahmednagar":"Maharashtra","Akola":"Maharashtra","Akot":"Maharashtra","Amalner":"Maharashtra","Ambejogai":"Maharashtra","Amravati":"Maharashtra","Anjangaon":"Maharashtra","Arvi":"Maharashtra","Bhiwandi":"Maharashtra","Dhule":"Maharashtra","Kalyan-Dombivali":"Maharashtra","Ichalkaranji":"Maharashtra","Karjat":"Maharashtra","Latur":"Maharashtra","Loha":"Maharashtra","Lonar":"Maharashtra","Lonavla":"Maharashtra","Mahad":"Maharashtra","Malegaon":"Maharashtra","Malkapur":"Maharashtra","Mangalvedhe":"Maharashtra","Mangrulpir":"Maharashtra","Manjlegaon":"Maharashtra","Manmad":"Maharashtra","Manwath":"Maharashtra","Mehkar":"Maharashtra","Mhaswad":"Maharashtra","Mira-Bhayandar":"Maharashtra","Morshi":"Maharashtra","Mukhed":"Maharashtra","Mul":"Maharashtra","Greater Mumbai*":"Maharashtra","Murtijapur":"Maharashtra","Nagpur":"Maharashtra","Nanded-Waghala":"Maharashtra","Nandgaon":"Madhya Pradesh","Nandura":"Madhya Pradesh","Nandurbar":"Maharashtra","Narkhed":"Maharashtra","Nashik":"Maharashtra","Navi Mumbai":"Maharashtra","Nawapur":"Maharashtra","Nilanga":"Maharashtra","Osmanabad":"Maharashtra","Ozar":"Maharashtra","Pachora":"Maharashtra","Paithan":"Maharashtra","Palghar":"Maharashtra","Pandharkaoda":"Maharashtra","Pandharpur":"Maharashtra","Panvel":"Maharashtra","Parbhani":"Maharashtra","Parli":"Maharashtra","Partur":"Maharashtra","Pathardi":"Maharashtra","Pathri":"Maharashtra","Patur":"Maharashtra","Pauni":"Maharashtra","Pen":"Maharashtra","Phaltan":"Maharashtra","Pulgaon":"Maharashtra","Pune":"Maharashtra","Purna":"Maharashtra","Pusad":"Maharashtra","Rahuri":"Maharashtra","Rajura":"Maharashtra","Ramtek":"Maharashtra","Ratnagiri":"Maharashtra","Raver":"Maharashtra","Risod":"Maharashtra","Sailu":"Maharashtra","Sangamner":"Maharashtra","Sangli":"Maharashtra","Sangole":"Maharashtra","Sasvad":"Maharashtra","Satana":"Maharashtra","Satara":"Maharashtra","Savner":"Maharashtra","Sawantwadi":"Maharashtra","Shahade":"Maharashtra","Shegaon":"Maharashtra","Shendurjana":"Maharashtra","Shirdi":"Maharashtra","Shirpur-Warwade":"Maharashtra","Shirur":"Maharashtra","Shrigonda":"Maharashtra","Shrirampur":"Maharashtra","Sillod":"Maharashtra","Sinnar":"Maharashtra","Solapur":"Maharashtra","Soyagaon":"Maharashtra","Talegaon Dabhade":"Maharashtra","Talode":"Maharashtra","Tasgaon":"Maharashtra","Thane":"Maharashtra","Tirora":"Maharashtra","Tuljapur":"Maharashtra","Tumsar":"Maharashtra","Uchgaon":"Maharashtra","Udgir":"Maharashtra","Umarga":"Maharashtra","Umarkhed":"Maharashtra","Umred":"Maharashtra","Uran":"Maharashtra","Uran Islampur":"Maharashtra","Vadgaon Kasba":"Maharashtra","Vaijapur":"Maharashtra","Vasai-Virar":"Maharashtra","Vita":"Maharashtra","Wadgaon Road":"Maharashtra","Wai":"Maharashtra","Wani":"Maharashtra","Wardha":"Maharashtra","Warora":"Maharashtra","Warud":"Maharashtra","Washim":"Maharashtra","Yavatmal":"Maharashtra","Yawal":"Maharashtra","Yevla":"Maharashtra",
    "Imphal*":"Manipur","Lilong":"Manipur","Mayang Imphal":"Manipur","Thoubal":"Manipur","Nongstoin":"Meghalaya","Shillong*":"Meghalaya","Tura":"Meghalaya","Aizawl":"Mizoram","Lunglei":"Mizoram","Saiha":"Mizoram",
    "Dimapur":"Nagaland","Kohima*":"Nagaland","Mokokchung":"Nagaland","Tuensang":"Nagaland","Wokha":"Nagaland","Zunheboto":"Nagaland",
    "Balangir":"Odisha","Baleshwar Town":"Odisha","Barbil":"Odisha","Bargarh":"Odisha","Baripada Town":"Odisha","Bhadrak":"Odisha","Bhawanipatna":"Odisha","Bhubaneswar*":"Odisha","Brahmapur":"Odisha","Byasanagar":"Odisha","Cuttack":"Odisha","Dhenkanal":"Odisha","Jatani":"Odisha","Jharsuguda":"Odisha","Kendrapara":"Odisha","Kendujhar":"Odisha","Malkangiri":"Odisha","Nabarangapur":"Odisha","Paradip":"Odisha","Parlakhemundi":"Odisha","Pattamundai":"Odisha","Phulabani":"Odisha","Puri":"Odisha","Rairangpur":"Odisha","Rajagangapur":"Odisha","Raurkela":"Odisha","Rayagada":"Odisha","Sambalpur":"Odisha","Soro":"Odisha","Sunabeda":"Odisha","Sundargarh":"Odisha","Talcher":"Odisha","Tarbha":"Odisha","Titlagarh":"Odisha",
    "Karaikal":"Puducherry","Mahe":"Puducherry","Pondicherry*":"Puducherry","Yanam":"Puducherry",
    "Amritsar":"Punjab","Barnala":"Punjab","Batala":"Punjab","Bathinda":"Punjab","Dhuri":"Punjab","Faridkot":"Punjab","Fazilka":"Punjab","Firozpur":"Punjab","Firozpur Cantt.":"Punjab","Gobindgarh":"Punjab","Gurdaspur":"Punjab","Hoshiarpur":"Punjab","Jagraon":"Punjab","Jalandhar Cantt.":"Punjab","Jalandhar":"Punjab","Kapurthala":"Punjab","Khanna":"Punjab","Kharar":"Punjab","Kot Kapura":"Punjab","Longowal":"Punjab","Ludhiana":"Punjab","Malerkotla":"Punjab","Malout":"Punjab","Moga":"Punjab","Mohali":"Punjab","Morinda":"Punjab","Mukerian":"Punjab","Muktsar":"Punjab","Nabha":"Punjab","Nakodar":"Punjab","Nangal":"Punjab","Nawanshahr":"Punjab","Pathankot":"Punjab","Patiala":"Punjab","Pattran":"Punjab","Patti":"Punjab","Phagwara":"Punjab","Phillaur":"Punjab","Qadian":"Punjab","Raikot":"Punjab","Rajpura":"Punjab","Rampura Phul":"Punjab","Rupnagar":"Punjab","Samana":"Punjab","Sangrur":"Punjab","Sirhind Fatehgarh Sahib":"Punjab","Sujanpur":"Punjab","Sunam":"Punjab","Talwara":"Punjab","Tarn Taran":"Punjab","Urmar Tanda":"Punjab","Zira":"Punjab","Zirakpur":"Punjab",
    "Ajmer":"Rajasthan","Alwar":"Rajasthan","Bikaner":"Rajasthan","Bharatpur":"Rajasthan","Bhilwara":"Rajasthan","Jaipur*":"Rajasthan","Jodhpur":"Rajasthan","Lachhmangarh":"Rajasthan","Ladnu":"Rajasthan","Lakheri":"Rajasthan","Lalsot":"Rajasthan","Losal":"Rajasthan","Makrana":"Rajasthan","Malpura":"Rajasthan","Mandalgarh":"Rajasthan","Mandawa":"Rajasthan","Merta City":"Rajasthan","Mount Abu":"Rajasthan","Nadbai":"Rajasthan","Nagar":"Rajasthan","Nagaur":"Rajasthan","Nasirabad":"Rajasthan","Nathdwara":"Rajasthan","Neem-Ka-Thana":"Rajasthan","Nimbahera":"Rajasthan","Nohar":"Rajasthan","Phalodi":"Rajasthan","Phulera":"Rajasthan","Pilani":"Rajasthan","Pilibanga":"Rajasthan","Pindwara":"Rajasthan","Pipar City":"Rajasthan","Prantij":"Rajasthan","Pratapgarh":"Rajasthan","Raisinghnagar":"Rajasthan","Rajakhera":"Rajasthan","Rajaldesar":"Rajasthan","Rajgarh (Alwar)":"Rajasthan","Rajgarh (Churu)":"Rajasthan","Rajsamand":"Rajasthan","Ramganj Mandi":"Rajasthan","Ramngarh":"Rajasthan","Ratangarh":"Rajasthan","Rawatbhata":"Rajasthan","Rawatsar":"Rajasthan","Reengus":"Rajasthan","Sadri":"Rajasthan","Sadulshahar":"Rajasthan","Sadulpur":"Rajasthan","Sagwara":"Rajasthan","Sambhar":"Rajasthan","Sanchore":"Rajasthan","Sangaria":"Rajasthan","Sardarshahar":"Rajasthan","Sawai Madhopur":"Rajasthan","Shahpura":"Rajasthan","Sheoganj":"Rajasthan","Sikar":"Rajasthan","Sirohi":"Rajasthan","Sojat":"Rajasthan","Sri Madhopur":"Rajasthan","Sujangarh":"Rajasthan","Sumerpur":"Rajasthan","Suratgarh":"Rajasthan","Taranagar":"Rajasthan","Todabhim":"Rajasthan","Todaraisingh":"Rajasthan","Tonk":"Rajasthan","Udaipur":"Rajasthan","Udaipurwati":"Rajasthan","Vijainagar, Ajmer":"Rajasthan",
    "Arakkonam":"Tamil Nadu","Aruppukkottai":"Tamil Nadu","Chennai*":"Tamil Nadu","Coimbatore":"Tamil Nadu","Erode":"Tamil Nadu","Gobichettipalayam":"Tamil Nadu","Kancheepuram":"Tamil Nadu","Karur":"Tamil Nadu","Lalgudi":"Tamil Nadu","Madurai":"Tamil Nadu","Manachanallur":"Tamil Nadu","Nagapattinam":"Tamil Nadu","Nagercoil":"Tamil Nadu","Namagiripettai":"Tamil Nadu","Namakkal":"Tamil Nadu","Nandivaram-Guduvancheri":"Tamil Nadu","Nanjikottai":"Tamil Nadu","Natham":"Tamil Nadu","Nellikuppam":"Tamil Nadu","Neyveli (TS)":"Tamil Nadu","O' Valley":"Tamil Nadu","Oddanchatram":"Tamil Nadu","P.N.Patti":"Tamil Nadu","Pacode":"Tamil Nadu","Padmanabhapuram":"Tamil Nadu","Palani":"Tamil Nadu","Palladam":"Tamil Nadu","Pallapatti":"Tamil Nadu","Pallikonda":"Tamil Nadu","Panagudi":"Tamil Nadu","Panruti":"Tamil Nadu","Paramakudi":"Tamil Nadu","Parangipettai":"Tamil Nadu","Pattukkottai":"Tamil Nadu","Perambalur":"Tamil Nadu","Peravurani":"Tamil Nadu","Periyakulam":"Tamil Nadu","Periyasemur":"Tamil Nadu","Pernampattu":"Tamil Nadu","Pollachi":"Tamil Nadu","Polur":"Tamil Nadu","Ponneri":"Tamil Nadu","Pudukkottai":"Tamil Nadu","Pudupattinam":"Tamil Nadu","Puliyankudi":"Tamil Nadu","Punjaipugalur":"Tamil Nadu","Ranipet":"Tamil Nadu","Rajapalayam":"Tamil Nadu","Ramanathapuram":"Tamil Nadu","Rameshwaram":"Tamil Nadu","Rasipuram":"Tamil Nadu","Salem":"Tamil Nadu","Sankarankoil":"Tamil Nadu","Sankari":"Tamil Nadu","Sathyamangalam":"Tamil Nadu","Sattur":"Tamil Nadu","Shenkottai":"Tamil Nadu","Sholavandan":"Tamil Nadu","Sholingur":"Tamil Nadu","Sirkali":"Tamil Nadu","Sivaganga":"Tamil Nadu","Sivagiri":"Tamil Nadu","Sivakasi":"Tamil Nadu","Srivilliputhur":"Tamil Nadu","Surandai":"Tamil Nadu","Suriyampalayam":"Tamil Nadu","Tenkasi":"Tamil Nadu","Thammampatti":"Tamil Nadu","Thanjavur":"Tamil Nadu","Tharamangalam":"Tamil Nadu","Tharangambadi":"Tamil Nadu","Theni Allinagaram":"Tamil Nadu","Thirumangalam":"Tamil Nadu","Thirupuvanam":"Tamil Nadu","Thiruthuraipoondi":"Tamil Nadu","Thiruvallur":"Tamil Nadu","Thiruvarur":"Tamil Nadu","Thuraiyur":"Tamil Nadu","Tindivanam":"Tamil Nadu","Tiruchendur":"Tamil Nadu","Tiruchengode":"Tamil Nadu","Tiruchirappalli":"Tamil Nadu","Tirukalukundram":"Tamil Nadu","Tirukkoyilur":"Tamil Nadu","Tirunelveli":"Tamil Nadu","Tirupathur":"Tamil Nadu","Tiruppur":"Tamil Nadu","Tiruttani":"Tamil Nadu","Tiruvannamalai":"Tamil Nadu","Tiruvethipuram":"Tamil Nadu","Tittakudi":"Tamil Nadu","Udhagamandalam":"Tamil Nadu","Udumalaipettai":"Tamil Nadu","Unnamalaikadai":"Tamil Nadu","Usilampatti":"Tamil Nadu","Uthamapalayam":"Tamil Nadu","Uthiramerur":"Tamil Nadu","Vadakkuvalliyur":"Tamil Nadu","Vadalur":"Tamil Nadu","Vadipatti":"Tamil Nadu","Valparai":"Tamil Nadu","Vandavasi":"Tamil Nadu","Vaniyambadi":"Tamil Nadu","Vedaranyam":"Tamil Nadu","Vellakoil":"Tamil Nadu","Vellore":"Tamil Nadu","Vikramasingapuram":"Tamil Nadu","Viluppuram":"Tamil Nadu","Virudhachalam":"Tamil Nadu","Virudhunagar":"Tamil Nadu","Viswanatham":"Tamil Nadu",
    // ignore: equal_keys_in_map
    "Adilabad":"Telangana","Bellampalle":"Telangana","Bhadrachalam":"Telangana","Bhainsa":"Telangana","Bhongir":"Telangana","Bodhan":"Telangana","Farooqnagar":"Telangana","Gadwal":"Telangana","Hyderabad*":"Telangana","Jagtial":"Telangana","Jangaon":"Telangana","Kagaznagar":"Telangana","Kamareddy":"Telangana","Karimnagar":"Telangana","Khammam":"Telangana","Koratla":"Telangana","Kothagudem":"Telangana","Kyathampalle":"Telangana","Mahbubnagar":"Telangana","Mancherial":"Telangana","Mandamarri":"Telangana","Manuguru":"Telangana","Medak":"Telangana","Miryalaguda":"Telangana","Nagarkurnool":"Telangana","Narayanpet":"Telangana","Nirmal":"Telangana","Nizamabad":"Telangana","Palwancha":"Telangana","Ramagundam":"Telangana","Sadasivpet":"Telangana","Sangareddy":"Telangana","Siddipet":"Telangana","Sircilla":"Telangana","Suryapet":"Telangana","Tandur":"Telangana","Vikarabad":"Telangana","Wanaparthy":"Telangana","Warangal":"Telangana","Yellandu":"Telangana","Agartala*":"Tripura","Belonia":"Tripura","Dharmanagar":"Tripura","Kailasahar":"Tripura","Khowai":"Tripura","Pratapgarh":"Tripura","Udaipur":"Tripura",
    // ignore: equal_keys_in_map
    "Achhnera":"Uttar Pradesh","Agra":"Uttar Pradesh","Aligarh":"Uttar Pradesh","Allahabad":"Uttar Pradesh","Amroha":"Uttar Pradesh","Azamgarh":"Uttar Pradesh","Bahraich":"Uttar Pradesh","Chandausi":"Uttar Pradesh","Etawah":"Uttar Pradesh","Firozabad":"Uttar Pradesh","Fatehpur Sikri":"Uttar Pradesh","Hapur":"Uttar Pradesh","Hardoi *":"Uttar Pradesh","Jhansi":"Uttar Pradesh","Kalpi":"Uttar Pradesh","Kanpur":"Uttar Pradesh","Khair":"Uttar Pradesh","Laharpur":"Uttar Pradesh","Lakhimpur":"Uttar Pradesh","Lal Gopalganj Nindaura":"Uttar Pradesh","Lalitpur":"Uttar Pradesh","Lalganj":"Uttar Pradesh","Lar":"Uttar Pradesh","Loni":"Uttar Pradesh","Lucknow*":"Uttar Pradesh","Mathura":"Uttar Pradesh","Meerut":"Uttar Pradesh","Modinagar":"Uttar Pradesh","Moradabad":"Uttar Pradesh","Nagina":"Uttar Pradesh","Najibabad":"Uttar Pradesh","Nakur":"Uttar Pradesh","Nanpara":"Uttar Pradesh","Naraura":"Uttar Pradesh","Naugawan Sadat":"Uttar Pradesh","Nautanwa":"Uttar Pradesh","Nawabganj":"Uttar Pradesh","Nehtaur":"Uttar Pradesh","Niwai":"Uttar Pradesh","Noida":"Uttar Pradesh","Noorpur":"Uttar Pradesh","Obra":"Uttar Pradesh","Orai":"Uttar Pradesh","Padrauna":"Uttar Pradesh","Palia Kalan":"Uttar Pradesh","Parasi":"Uttar Pradesh","Phulpur":"Uttar Pradesh","Pihani":"Uttar Pradesh","Pilibhit":"Uttar Pradesh","Pilkhuwa":"Uttar Pradesh","Powayan":"Uttar Pradesh","Pukhrayan":"Uttar Pradesh","Puranpur":"Uttar Pradesh","Purquazi":"Uttar Pradesh","Purwa":"Uttar Pradesh","Rae Bareli":"Uttar Pradesh","Rampur":"Uttar Pradesh","Rampur Maniharan":"Uttar Pradesh","Rampur Maniharan":"Uttar Pradesh","Rasra":"Uttar Pradesh","Rath":"Uttar Pradesh","Renukoot":"Uttar Pradesh","Reoti":"Uttar Pradesh","Robertsganj":"Uttar Pradesh","Rudauli":"Uttar Pradesh","Rudrapur":"Uttar Pradesh","Sadabad":"Uttar Pradesh","Safipur":"Uttar Pradesh","Saharanpur":"Uttar Pradesh","Sahaspur":"Uttar Pradesh","Sahaswan":"Uttar Pradesh","Sahawar":"Uttar Pradesh","Sahjanwa":"Uttar Pradesh","Saidpur":"Uttar Pradesh","Sambhal":"Uttar Pradesh","Samdhan":"Uttar Pradesh","Samthar":"Uttar Pradesh","Sandi":"Uttar Pradesh","Sandila":"Uttar Pradesh","Sardhana":"Uttar Pradesh","Seohara":"Uttar Pradesh","Shahabad, Hardoi":"Uttar Pradesh","Shahabad, Rampur":"Uttar Pradesh","Shahganj":"Uttar Pradesh","Shahjahanpur":"Uttar Pradesh","Shamli":"Uttar Pradesh","Shamsabad, Agra":"Uttar Pradesh","Shamsabad, Farrukhabad":"Uttar Pradesh","Sherkot":"Uttar Pradesh","Shikarpur, Bulandshahr":"Uttar Pradesh","Shikohabad":"Uttar Pradesh","Shishgarh":"Uttar Pradesh","Siana":"Uttar Pradesh","Sikanderpur":"Uttar Pradesh","Sikandra Rao":"Uttar Pradesh","Sikandrabad":"Uttar Pradesh","Sirsaganj":"Uttar Pradesh","Sirsi":"Uttar Pradesh","Sitapur":"Uttar Pradesh","Soron":"Uttar Pradesh","Suar":"Uttar Pradesh","Sultanpur":"Uttar Pradesh","Sumerpur":"Uttar Pradesh","Tanda":"Uttar Pradesh","Thakurdwara":"Uttar Pradesh","Thana Bhawan":"Uttar Pradesh","Tilhar":"Uttar Pradesh","Tirwaganj":"Uttar Pradesh","Tulsipur":"Uttar Pradesh","Tundla":"Uttar Pradesh","Ujhani":"Uttar Pradesh","Unnao":"Uttar Pradesh","Utraula":"Uttar Pradesh","Varanasi":"Uttar Pradesh","Vrindavan":"Uttar Pradesh","Warhapur":"Uttar Pradesh","Zaidpur":"Uttar Pradesh","Zamania":"Uttar Pradesh",
    // ignore: equal_keys_in_map
    "Bageshwar":"Uttarakhand","Dehradun":"Uttarakhand","Haldwani-cum-Kathgodam":"Uttarakhand","Hardwar":"Uttarakhand","Kashipur":"Uttarakhand","Manglaur":"Uttarakhand","Mussoorie":"Uttarakhand","Nagla":"Uttarakhand","Nainital":"Uttarakhand","Pauri":"Uttarakhand","Pithoragarh":"Uttarakhand","Ramnagar":"Uttarakhand","Rishikesh":"Uttarakhand","Roorkee":"Uttarakhand","Rudrapur":"Uttarakhand","Sitarganj":"Uttarakhand","Srinagar":"Uttarakhand","Tehri":"Uttarakhand",
    "Adra":"West Bengal","Alipurduar":"West Bengal","Arambagh":"West Bengal","Asansol":"West Bengal","Baharampur":"West Bengal","Balurghat":"West Bengal","Bankura":"West Bengal","Darjiling":"West Bengal","English Bazar":"West Bengal","Gangarampur":"West Bengal","Habra":"West Bengal","Hugli-Chinsurah":"West Bengal","Jalpaiguri":"West Bengal","Jhargram":"West Bengal","Kalimpong":"West Bengal","Kharagpur":"West Bengal","Kolkata":"West Bengal","Mainaguri":"West Bengal","Malda":"West Bengal","Mathabhanga":"West Bengal","Medinipur":"West Bengal","Memari":"West Bengal","Monoharpur":"West Bengal","Murshidabad":"West Bengal","Nabadwip":"West Bengal","Naihati":"West Bengal","Panchla":"West Bengal","Pandua":"West Bengal","Paschim Punropara":"West Bengal","Purulia":"West Bengal","Raghunathpur":"West Bengal","Raghunathganj":"West Bengal","Raiganj":"West Bengal","Rampurhat":"West Bengal","Ranaghat":"West Bengal","Sainthia":"West Bengal","Santipur":"West Bengal","Siliguri":"West Bengal","Sonamukhi":"West Bengal","Srirampore":"West Bengal","Suri":"West Bengal","Taki":"West Bengal","Tamluk":"West Bengal","Tarakeswar":"West Bengal",
  };

  List<String> state = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra and Nagar Haveli",
    "Delhi",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Ladakh",
    "Lakshadweep",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Puducherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];
  List<String> city = [];

  String selectedState;
  String selectedcity;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final motherNameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final aadharNumberController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final alternatePhoneNumberController = TextEditingController();
  final educationQualificationController = TextEditingController();
  final workExperianceController = TextEditingController();
  final districtController = TextEditingController();
  final stateController = TextEditingController();
  final pincodeController = TextEditingController();
  final lastCompanyWorkedForController = TextEditingController();
  final lastWorkingDesignationController = TextEditingController();
  final addressController = TextEditingController();
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeViewModel>.reactive(
        viewModelBuilder: () => EmployeeViewModel(),
        builder: (context, model, child) => Column(
              children: [
                Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height - 275,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Email Address:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'EmailAddress',
                                  controller: emailController,
                                  text1InputType: TextInputType.emailAddress,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your name:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Name',
                                  controller: nameController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Gender:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: ExpansionList<String>(
                                    items: gender,
                                    title: model.selectedRole,
                                    onItemSelected: model.setSelectedRole),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your date of birth:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Date of Birth',
                                  controller: dateOfBirthController,
                                  text1InputType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Aadhar number:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Aadhar number',
                                  controller: aadharNumberController,
                                  text1InputType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your phone number:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Phone number',
                                  controller: phoneNumberController,
                                  text1InputType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your alternate phone number:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: ' Alternate Phone number',
                                  controller: alternatePhoneNumberController,
                                  text1InputType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your father name:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: "Father's name",
                                  controller: fatherNameController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your mother's name:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: "Mother's name",
                                  controller: motherNameController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your address:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Address',
                                  controller: addressController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "State:",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            ),
                            Container(
                              width: 200,
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                  border: Border.all()),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedState = value;
                                      selectedcity = null;
                                      city.clear();
                                      stateCity.forEach((k, v) {
                                        print(k);
                                        if (selectedState == v) {
                                          city.add(k);
                                        }
                                      });
                                    });
                                  },
                                  value: selectedState,
                                  hint: Center(
                                    child: Text('Select a state'),
                                  ),
                                  items: state
                                      .map((state) => DropdownMenuItem(
                                            child: Text(state),
                                            value: state,
                                          ))
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "City:",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            ),
                            Container(
                              width: 200,
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                  border: Border.all()),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                isExpanded: true,
                                onChanged: (value) {
                                  setState(() {
                                    selectedcity = value;
                                  });
                                  print(value);
                                },
                                value: selectedcity,
                                hint: Center(
                                  child: Text('Select a city'),
                                ),
                                items: selectedState != null
                                    ? city
                                        .map((city) => DropdownMenuItem(
                                              child: Text(city),
                                              value: city,
                                            ))
                                        .toList()
                                    : [],
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter pincode:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Pin code',
                                  controller: pincodeController,
                                  text1InputType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Educational Qualification:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Educational Qualification',
                                  controller: educationQualificationController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Work Experiance:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Work Experiance',
                                  controller: workExperianceController,
                                  text1InputType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Last Company Worked for:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Last Company Worked for',
                                  controller: lastCompanyWorkedForController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Enter your Last Working Designation:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  placeholder: 'Last Working Designation',
                                  controller: lastWorkingDesignationController,
                                  text1InputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Create a password to login:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: InputField(
                                  password: true,
                                  placeholder: 'Create a password',
                                  controller: passwordController,
                                  additionalNote:
                                      'Password has to be a minimum of 6 characters',
                                  text1InputType: TextInputType.emailAddress,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        new Padding(padding: EdgeInsets.only(bottom: 20.0)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                BusyButton(
                  busy: model.busy,
                  title: 'Submit',
                  onPressed: () {
                    model.signUp(
                        address: addressController.text,
                        employeeEmailAddress: emailController.text,
                        password: passwordController.text,
                        name: nameController.text,
                        motherName: motherNameController.text,
                        fatherName: fatherNameController.text,
                        phoneNumber: phoneNumberController.text,
                        alternatePhoneNumber:
                            alternatePhoneNumberController.text,
                        city: selectedcity,
                        pincode: pincodeController.text,
                        state: selectedState,
                        educationalQualification:
                            educationQualificationController.text,
                        lastCompanyWorkedFor:
                            lastCompanyWorkedForController.text,
                        lastWorkingDesignation:
                            lastWorkingDesignationController.text,
                        dateOfBirth: dateOfBirthController.text,
                        gender: genderController.text,
                        aadharNumber: aadharNumberController.text,
                        workExperiance: workExperianceController.text);
                  },
                  color: Colors.blue,
                ),
              ],
            ));
  }
}