SELECT * FROM VOL;
SELECT * FROM BILLET;
SELECT * FROM EQUIPAGE;

-- insert dans vol numero de porte negatif
EXECUTE TP2P.ins_vol(-5,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188','YUL55');

-- insert dans vol numero de porte null
EXECUTE TP2P.ins_vol(null,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188','YUL55');

-- insert dans vol numero de vol null
EXECUTE TP2P.ins_vol(5,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188',null);

-- update dans vol numero de porte negatif
EXECUTE TP2P.upd_vol(-5,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188','YUL55');

-- update dans vol numero de porte null
EXECUTE TP2P.upd_vol(null,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188','YUL55');

-- update dans vol numero de vol null
EXECUTE TP2P.upd_vol(5,to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),'2382','4545',to_date('19-05-10 20:00:00','YYYY-MM-DD HH24:MI:SS'),'1739188',null);

-- insert dans billet un prix negatif
EXECUTE TP2P.ins_billet('4040', '-3000', 'YUL1', 66);

-- insert dans billet un prix null
EXECUTE TP2P.ins_billet('4040', null, 'YUL1', 66);

-- insert dans billet un idbillet null
EXECUTE TP2P.ins_billet('4040', '3000', 'YUL1', null);

-- update dans billet un prix negatif
EXECUTE TP2P.upd_billet('4040', '-3000', 'YUL1', 66);

-- update dans billet un prix null
EXECUTE TP2P.upd_billet('4040', null, 'YUL1', 66);

-- update dans billet un idbillet null
EXECUTE TP2P.upd_billet('4040', 3000, 'YUL1', NULL);

-- insert dans equipage un nom equipage null
EXECUTE TP2P.ins_equipage(null, 'Luke Brodeur', 2389, 4545);

-- insert dans equipage un idequipage negatif
EXECUTE TP2P.ins_equipage('W', 'Luke Brodeur', -2389, 4545);

-- insert dans equipage un idequipage null
EXECUTE TP2P.ins_equipage('W', 'Luke Brodeur', null, 4545);

-- update dans equipage un nom equipage null
EXECUTE TP2P.upd_equipage(null, 'Luke Brodeur', 2389, 4545);

-- update dans equipage un idequipage negatif
EXECUTE TP2P.upd_equipage('W', 'Luke Brodeur', -2389, 4545);

-- update dans equipage un idequipage null
EXECUTE TP2P.upd_equipage('W', 'Luke Brodeur', null, 4545);

