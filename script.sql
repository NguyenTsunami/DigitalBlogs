use master
go
create database LABWEB_DigitalNews
go
use LABWEB_DigitalNews
go
create table Article
(
	id int identity primary key,
	title nvarchar(300),
	images varchar(300),
	content text,
	writer nvarchar(300),
	datepub datetime,
)
go
insert into Article
values ('Article 1', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 1', convert(datetime, 'Sep 23 2020 12:22:00:000 PM', 109))
go
insert into Article
values ('Article 2', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 2', convert(datetime, 'Sep 23 2020 12:20:00:000 PM', 109))

go
insert into Article
values ('Article 3', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 3', convert(datetime, 'Sep 23 2020 12:22:10:000 PM', 109))

go
insert into Article
values ('Article 4', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 4', convert(datetime, 'Jul 23 2020 12:22:00:000 PM', 109))

go
insert into Article
values ('Article 5', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 5', convert(datetime, 'Sep 23 2021 12:22:00:000 PM', 109))

go
insert into Article
values ('Article 6', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 6', convert(datetime, 'Sep 23 2020 01:22:00:000 PM', 109))

go
insert into Article
values ('Article 7', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 7', convert(datetime, 'Sep 23 2020 12:09:00:000 PM', 109))

go
insert into Article
values ('Article 8', 'images/i1.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space.<br><br><br>1. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'Tsunami 8', convert(datetime, 'Sep 29 2020 12:22:00:000 PM', 109))


go
select * from Article
