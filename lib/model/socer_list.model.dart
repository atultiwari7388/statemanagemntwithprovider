// To parse this JSON data, do
//
//     final socerListModel = socerListModelFromJson(jsonString);

import 'dart:convert';

SocerListModel socerListModelFromJson(String str) =>
    SocerListModel.fromJson(json.decode(str));

String socerListModelToJson(SocerListModel data) => json.encode(data.toJson());

class SocerListModel {
  SocerListModel({
    this.stages,
  });

  List<Stage>? stages;

  factory SocerListModel.fromJson(Map<String, dynamic> json) => SocerListModel(
        stages: List<Stage>.from(json["Stages"].map((x) => Stage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Stages": List<dynamic>.from(stages!.map((x) => x.toJson())),
      };
}

class Event {
  Event({
    this.eid,
    this.pids,
    this.sids,
    this.tr1,
    this.tr2,
    this.trh1,
    this.trh2,
    this.tr1Or,
    this.tr2Or,
    this.t1,
    this.t2,
    this.eps,
    this.esid,
    this.epr,
    this.ecov,
    this.ern,
    this.ernInf,
    this.et,
    this.esd,
    this.luUt,
    this.eds,
    this.eact,
    this.incsX,
    this.comX,
    this.luX,
    this.statX,
    this.subsX,
    this.sdFowX,
    this.sdInnX,
    this.eo,
    this.luC,
    this.ehid,
    this.stg,
    this.pid,
    this.spid,
    this.ewt,
    this.edf,
  });

  String? eid;
  Map<String, String>? pids;
  Map<String, String>? sids;
  String? tr1;
  String? tr2;
  String? trh1;
  String? trh2;
  String? tr1Or;
  String? tr2Or;
  List<T1>? t1;
  List<T1>? t2;
  String? eps;
  int? esid;
  int? epr;
  int? ecov;
  int? ern;
  String? ernInf;
  int? et;
  int? esd;
  int? luUt;
  int? eds;
  int? eact;
  int? incsX;
  int? comX;
  int? luX;
  int? statX;
  int? subsX;
  int? sdFowX;
  int? sdInnX;
  int? eo;
  int? luC;
  int? ehid;
  Stage? stg;
  int? pid;
  int? spid;
  int? ewt;
  int? edf;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        eid: json["Eid"],
        pids: Map.from(json["Pids"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        sids: Map.from(json["Sids"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        tr1: json["Tr1"] ?? null,
        tr2: json["Tr2"] ?? null,
        trh1: json["Trh1"] ?? null,
        trh2: json["Trh2"] ?? null,
        tr1Or: json["Tr1OR"] ?? null,
        tr2Or: json["Tr2OR"] ?? null,
        t1: List<T1>.from(json["T1"].map((x) => T1.fromJson(x))),
        t2: List<T1>.from(json["T2"].map((x) => T1.fromJson(x))),
        eps: json["Eps"],
        esid: json["Esid"],
        epr: json["Epr"],
        ecov: json["Ecov"],
        ern: json["Ern"],
        ernInf: json["ErnInf"] ?? null,
        et: json["Et"],
        esd: json["Esd"],
        luUt: json["LuUT"] ?? null,
        eds: json["Eds"] ?? null,
        eact: json["Eact"],
        incsX: json["IncsX"],
        comX: json["ComX"],
        luX: json["LuX"],
        statX: json["StatX"],
        subsX: json["SubsX"],
        sdFowX: json["SDFowX"],
        sdInnX: json["SDInnX"],
        eo: json["EO"],
        luC: json["LuC"],
        ehid: json["Ehid"],
        stg: Stage.fromJson(json["Stg"]),
        pid: json["Pid"],
        spid: json["Spid"],
        ewt: json["Ewt"] ?? null,
        edf: json["Edf"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "Eid": eid,
        "Pids": Map.from(pids!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Sids": Map.from(sids!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Tr1": tr1 == null ? null : tr1,
        "Tr2": tr2 == null ? null : tr2,
        "Trh1": trh1 == null ? null : trh1,
        "Trh2": trh2 == null ? null : trh2,
        "Tr1OR": tr1Or == null ? null : tr1Or,
        "Tr2OR": tr2Or == null ? null : tr2Or,
        "T1": List<dynamic>.from(t1!.map((x) => x.toJson())),
        "T2": List<dynamic>.from(t2!.map((x) => x.toJson())),
        "Eps": eps,
        "Esid": esid,
        "Epr": epr,
        "Ecov": ecov,
        "Ern": ern,
        "ErnInf": ernInf == null ? null : ernInf,
        "Et": et,
        "Esd": esd,
        "LuUT": luUt == null ? null : luUt,
        "Eds": eds == null ? null : eds,
        "Eact": eact,
        "IncsX": incsX,
        "ComX": comX,
        "LuX": luX,
        "StatX": statX,
        "SubsX": subsX,
        "SDFowX": sdFowX,
        "SDInnX": sdInnX,
        "EO": eo,
        "LuC": luC,
        "Ehid": ehid,
        "Stg": stg!.toJson(),
        "Pid": pid,
        "Spid": spid,
        "Ewt": ewt == null ? null : ewt,
        "Edf": edf == null ? null : edf,
      };
}

class Stage {
  Stage({
    this.sid,
    this.snm,
    this.scd,
    this.cid,
    this.cnm,
    this.csnm,
    this.ccd,
    this.ccdiso,
    this.compId,
    this.compN,
    this.compD,
    this.scu,
    this.chi,
    this.shi,
    this.sdn,
    this.events,
    this.sds,
  });

  String? sid;
  Sdn? snm;
  Scd? scd;
  String? cid;
  Cnm? cnm;
  Cnm? csnm;
  Ccd? ccd;
  Ccdiso? ccdiso;
  String? compId;
  Cnm? compN;
  String? compD;
  int? scu;
  int? chi;
  int? shi;
  Sdn? sdn;
  List<Event>? events;
  Sdn? sds;

  factory Stage.fromJson(Map<String, dynamic> json) => Stage(
        sid: json["Sid"],
        snm: sdnValues.map![json["Snm"]],
        scd: scdValues.map![json["Scd"]],
        cid: json["Cid"],
        cnm: cnmValues.map![json["Cnm"]],
        csnm: json["Csnm"] == null ? null : cnmValues.map![json["Csnm"]],
        ccd: ccdValues.map![json["Ccd"]],
        ccdiso: ccdisoValues.map![json["Ccdiso"]],
        compId: json["CompId"] == null ? null : json["CompId"],
        compN: json["CompN"] == null ? null : cnmValues.map![json["CompN"]],
        compD: json["CompD"] == null ? null : json["CompD"],
        scu: json["Scu"],
        chi: json["Chi"],
        shi: json["Shi"],
        sdn: sdnValues.map![json["Sdn"]],
        events: json["Events"] == null
            ? null
            : List<Event>.from(json["Events"].map((x) => Event.fromJson(x))),
        sds: json["Sds"] == null ? null : sdnValues.map![json["Sds"]],
      );

  Map<String, dynamic> toJson() => {
        "Sid": sid,
        "Snm": sdnValues.reverse[snm],
        "Scd": scdValues.reverse[scd],
        "Cid": cid,
        "Cnm": cnmValues.reverse[cnm],
        "Csnm": csnm == null ? null : cnmValues.reverse[csnm],
        "Ccd": ccdValues.reverse[ccd],
        "Ccdiso": ccdisoValues.reverse[ccdiso],
        "CompId": compId == null ? null : compId,
        "CompN": compN == null ? null : cnmValues.reverse[compN],
        "CompD": compD == null ? null : compD,
        "Scu": scu,
        "Chi": chi,
        "Shi": shi,
        "Sdn": sdnValues.reverse[sdn],
        "Events": events == null
            ? null
            : List<dynamic>.from(events!.map((x) => x.toJson())),
        "Sds": sds == null ? null : sdnValues.reverse[sds],
      };
}

class T1 {
  T1({
    this.nm,
    this.id,
    this.tbd,
    this.img,
    this.gd,
    this.pids,
    this.coNm,
    this.coId,
    this.hasVideo,
    this.newsTag,
  });

  String? nm;
  String? id;
  int? tbd;
  String? img;
  int? gd;
  Map<String, List<String>>? pids;
  String? coNm;
  String? coId;
  bool? hasVideo;
  String? newsTag;

  factory T1.fromJson(Map<String, dynamic> json) => T1(
        nm: json["Nm"],
        id: json["ID"],
        tbd: json["tbd"],
        img: json["Img"] == null ? null : json["Img"],
        gd: json["Gd"],
        pids: Map.from(json["Pids"]).map((k, v) =>
            MapEntry<String, List<String>>(
                k, List<String>.from(v.map((x) => x)))),
        coNm: json["CoNm"],
        coId: json["CoId"],
        hasVideo: json["HasVideo"],
        newsTag: json["NewsTag"] == null ? null : json["NewsTag"],
      );

  Map<String, dynamic> toJson() => {
        "Nm": nm,
        "ID": id,
        "tbd": tbd,
        "Img": img == null ? null : img,
        "Gd": gd,
        "Pids": Map.from(pids!).map((k, v) =>
            MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => x)))),
        "CoNm": coNm,
        "CoId": coId,
        "HasVideo": hasVideo,
        "NewsTag": newsTag == null ? null : newsTag,
      };
}

enum Ccd {
  CHAMPIONS_LEAGUE,
  EUROPA_CONFERENCE_LEAGUE,
  INTL,
  EGYPT,
  MOROCCO,
  SWEDEN
}

final ccdValues = EnumValues({
  "champions-league": Ccd.CHAMPIONS_LEAGUE,
  "egypt": Ccd.EGYPT,
  "europa-conference-league": Ccd.EUROPA_CONFERENCE_LEAGUE,
  "intl": Ccd.INTL,
  "morocco": Ccd.MOROCCO,
  "sweden": Ccd.SWEDEN
});

enum Ccdiso { NON, EGY, MAR, SWE }

final ccdisoValues = EnumValues({
  "EGY": Ccdiso.EGY,
  "MAR": Ccdiso.MAR,
  "NON": Ccdiso.NON,
  "SWE": Ccdiso.SWE
});

enum Cnm {
  CHAMPIONS_LEAGUE,
  EUROPA_CONFERENCE_LEAGUE,
  INTERNATIONAL,
  EGYPT,
  MOROCCO,
  SWEDEN
}

final cnmValues = EnumValues({
  "Champions League": Cnm.CHAMPIONS_LEAGUE,
  "Egypt": Cnm.EGYPT,
  "Europa Conference League": Cnm.EUROPA_CONFERENCE_LEAGUE,
  "International": Cnm.INTERNATIONAL,
  "Morocco": Cnm.MOROCCO,
  "Sweden": Cnm.SWEDEN
});

enum Scd { QUALIFICATION, CLUB_FRIENDLIES, CUP, BOTOLA_PRO, SUPERETTAN }

final scdValues = EnumValues({
  "botola-pro": Scd.BOTOLA_PRO,
  "club-friendlies": Scd.CLUB_FRIENDLIES,
  "cup": Scd.CUP,
  "qualification": Scd.QUALIFICATION,
  "superettan": Scd.SUPERETTAN
});

enum Sdn { QUALIFICATION, CLUB_FRIENDLIES, CUP, BOTOLA_PRO, SUPERETTAN }

final sdnValues = EnumValues({
  "Botola Pro": Sdn.BOTOLA_PRO,
  "Club Friendlies": Sdn.CLUB_FRIENDLIES,
  "Cup": Sdn.CUP,
  "Qualification": Sdn.QUALIFICATION,
  "Superettan": Sdn.SUPERETTAN
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
