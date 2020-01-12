USE[easy_travels]
GO
ALTER PROCEDURE sp_create_package(
@package_id varchar(40),
@employee_id varchar(40),
@package_display_name varchar(100),
@unique_url_name varchar(50),
@night int,
@days int,
@charges varchar(30),
@country varchar(30),
@city varchar(30),
@valid datetime,
@iternary xml,
@session_token varchar(80))
AS
BEGIN


 if(dbo.check_employee_session(@employee_id,@session_token)!=0 AND 
	dbo.check_employee_has_right(@employee_id,2)!=0
 )
	BEGIN
		INSERT INTO package (charges,city,country,days,employee_id,night,package_display_name,package_id,unique_url_name,valid,iternary)
		VALUES (@charges,@city,@country,@days,@employee_id,@night,@package_display_name,@package_id,@unique_url_name,@valid,@iternary)

	END
 ELSE
	BEGIN
		print('FALSE')
	END

END


/*EXEC sp_create_package '10ddc398-4405-48ad-ab5f-95322451eff3','f8bc75b0-7b89-4a56-942e-139426b77483',
'Bali Escape','bali-escape',5,6,
'50,000','Indonesia','Baturiti','01-01-2020','<?xml version="1.0" encoding="UTF-8"?>
<root>
    <dayWiseIternaries>
        <dayNumber>1</dayNumber>
        <id>8180f742-7ba4-44b0-911d-c69342119246</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails>Bali: Arrive at the airport. Transfer to your hotel and check-in. Rest of the day is free at leisure.</dayDetails>
    </dayWiseIternaries>
    <dayWiseIternaries>
        <dayNumber>2</dayNumber>
        <id>c14db002-7aeb-4afe-950e-408d185d7106</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails> Bali: Breakfast at the hotel. Proceed for Full day Barong Kintamani tour. The highlight is the magnificent view of Mount and Lake Batur with the smoky Agung Volcano in the background. Enroute stop at Singapadu Village to see the Barong &amp; Keris Dance performance, the holy spring of Tirta Empul at Tampak Siring, Coffee and Cacao Plantation at Madu Pertiwi Agro Tourism. You can have lunch at a local restaurant in Kintamani area. Return back to hotel by evening. Overnight at the hotel. (B)</dayDetails>
    </dayWiseIternaries>
    <dayWiseIternaries>
        <dayNumber>3</dayNumber>
        <id>dc93f809-fb84-48ee-a9e8-3215db6ec81c</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails>Bali: Breakfast at the hotel. Proceed to Safari Marine Park - Gianyar (approx. 1.5-2 hrs). The Safari Marine Park activities include Fresh water aquarium, Animal show, Elephant show, Bali Agung show, Water Park and fun zone. Return back to hotel by evening. Overnight at the hotel. (B)</dayDetails>
    </dayWiseIternaries>
    <dayWiseIternaries>
        <dayNumber>4</dayNumber>
        <id>0104b7fe-19f1-430f-ac10-21caac6fea7a</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails> Bali: Breakfast at the hotel. Proceed to Benoa Beach to take Glass Bottom Boat Turtle Island. On the way you can see many fishes and Coral reef. Arrive at the island where you can see and take pictures of turtles, birds and animals. Enjoy Water Sport Activities (Not included). Return back to hotel for overnight stay. (B)</dayDetails>
    </dayWiseIternaries>
    <dayWiseIternaries>
        <dayNumber>5</dayNumber>
        <id>1a951463-d3df-4aa1-a6ca-d3b7c392f85a</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails>Bali: Breakfast at the hotel. Free time during the morning to experience facilities at the hotel or go for a spa massage. Afternoon proceed to Tanah Lot. Tanah Lot Temple is one of the most popular places of interest in Bali. It is also called Tanah Lot which means ancient land and also Tanah Lod, which means the land to the south. The temple Pura Tanah Lot, simple in its construction, is dramatic in its ocean-front location and is one of the main temples in the worship of Balinese Gods. On the return you can stop at Jimbaran beach for dinner on your own. Overnight at the hotel. (B)</dayDetails>
    </dayWiseIternaries>
    <dayWiseIternaries>
        <dayNumber>6</dayNumber>
        <id>a687bc53-940f-4760-8fbf-b37f186f37e3</id>
        <dayDate />
        <packageName>bali-escape</packageName>
        <dayImage />
        <dayDetails>Bali: Breakfast at the hotel. Check-out and depart for the airport for your onward journey.(B)</dayDetails>
    </dayWiseIternaries>
</root>','f8bc75b0-7b89-4a56-942e-139426b774831576258022117';*/