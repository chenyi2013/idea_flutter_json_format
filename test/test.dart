import 'dart:convert';
import 'temp.dart';

main() {
  var json = '''
  {
    "code": "2000",
    "data": {
      "expressAddress": {
        "address": "控江路1209",
        "createdDatetime": "2015-12-09 19:36:38",
        "receiver": "张**",
        "receiverCellphone": "1502379****",
        "sid": "c25c1954ca204dee8fc18f51bcc71a3e",
        "sortNumber": 1,
        "title": "先生",
        "type": "EXPRESS",
        "userSid": "a19cf6e3586143d283dd4128c456bfaf"
      },
      "facetofaceAddress": {
        "address": "",
        "receiver": "罗",
        "receiverCellphone": "1388345****",
        "sid": "001190e19e754001b53701d0aa81bfe0",
        "sortNumber": 1,
        "title": "女士",
        "type": "FACETOFACE",
        "userSid": "a19cf6e3586143d283dd4128c456bfaf"
      },
      "order": {
        "bidding": 2300,
        "brokerAvatar": "broker/getAvatar?key=avatar/b82378ccaccb403c9d8420274372c904",
        "brokerCellphone": "1347282****",
        "brokerDealNum": 15,
        "brokerName": "王**",
        "brokerSid": "b82378ccaccb403c9d8420274372c904",
        "brokerStars": 4.5,
        "code": "1512151307270113",
        "cover": "show/getPoster?key=52f30bbce4ef4122919cbc95c2f01c36/52f30bbce4ef4122919cbc95c2f01c36",
        "createdDatetime": "2015-12-15 13:07:28",
        "deliveryAddressSid": "c25c1954ca204dee8fc18f51bcc71a3e",
        "deliveryFee": 0,
        "evaluateStarts": 0,
        "isDelete": false,
        "isSequential": false,
        "orderStatus": "CLOSED",
        "orderStatusArray": [{
          "operateDatetime": "2015-12-15 13:07:28",
          "operateUserSid": "b82378ccaccb403c9d8420274372c904",
          "operateUsername": "王**",
          "orderSid": "21bc3cc65e9e47af952c1f4f1f0fd85a",
          "orderType": "1",
          "sid": "04940ed81540466ea4408f79989a5d54",
          "state": "TAKING"
        }],
        "orderStatusDesp": "",
        "orderType": "1",
        "payType": "",
        "postTicketSid": "65cc6d54300349e984134ecd0faf3ede",
        "receiveDatetime": "2015-12-15 13:07:28",
        "receiver": "张**",
        "receiverAddress": "控江路1209",
        "receiverCellphone": "1502379****",
        "receiverTitle": "先生",
        "remark": "",
        "requestDatetime": "2015-12-15 13:07:28",
        "showName": "Love Radio 品冠 现在你在哪里 巡回演唱会上海站",
        "showSchedule": "2016-01-09 19:30:00",
        "showScheduleSid": "eecfd0657fb445a7a36abedc9b621c89",
        "showSid": "52f30bbce4ef4122919cbc95c2f01c36",
        "sid": "21bc3cc65e9e47af952c1f4f1f0fd85a",
        "stateDesp": "已关闭",
        "ticketPrice": 88000,
        "ticketQuantity": 1,
        "ticketSid": "c4583aa8a79a478e8e5cd14691028430",
        "totalPrice": 2300,
        "tradeType": "EXPRESS",
        "userCellphone": "1502379****",
        "userLeaveMessage": "",
        "userSid": "a19cf6e3586143d283dd4128c456bfaf",
        "venueAddress": "上海市长宁区武夷路777号",
        "venueName": "上海国际体操中心"
      }
    },
    "extraData": {},
    "message": "",
    "success": true,
      "intList": [0, 1, 2, 3],
      "boolList": [true, false, true, true],
      "doubleList": [0.0, 1.1, 2.2, 3.3]
  }
  ''';

  var map = new JsonDecoder().convert(json);
  Temp temp = Temp.fromMap(map);
  print(temp.data.expressAddress.address);
}