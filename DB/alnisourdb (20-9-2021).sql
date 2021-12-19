-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2021 at 04:22 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alnisourdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_vision` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ar_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ar_goals` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_vision` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_goals` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `department_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `ar_vision`, `ar_message`, `ar_goals`, `en_vision`, `en_message`, `en_goals`, `department_id`, `created_at`, `is_deleted`) VALUES
(1, 'test1', 'test1', 'test1', NULL, NULL, NULL, 1, '2021-07-30 02:21:37', 1),
(2, 'test2', 'test2', 'test2', NULL, NULL, NULL, 3, '2021-08-14 13:16:50', 1),
(3, 'test22', 'test22', 'test22', NULL, NULL, NULL, 3, '2021-08-14 13:21:45', 1),
(4, 'test222222', 'test222222222', 'test2222222', 'sdfsdf22222222', 'sdfsdf222222', 'sdfdsf2222222', 1, '2021-08-21 09:16:47', 1),
(5, '{\"ops\":[{\"insert\":\"نسعى للوصول إلى ترصين برامج التعليم الجامعي الأهلي في الكلية ضمن بيئة أخلاقية علمية وإبداعية من خلال تطبيق معايير الإعتماد الأكاديمي لنيل رضا الطالب والجهات المستفيدة في بناء المعرفة والمهارة والقدرات التي يجب تحقيقها في مخرجاتنا التعليمية.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"التأكيد على تكامل المعرفه النظريه والتطبيقيه.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الارتقاء للحصول على الاعتماد الاكاديمي من خلال تطبيق الرصانه في اختيار البرامج التعليميه.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"\\n\"}]}', '{\"ops\":[{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\"},\"insert\":\"\\n\"},{\"insert\":\"التحول الى كلية رصينه خاصه تتماشى مع ضوابط وزارة التعليم العالي والبحث العلمي في برامج الاعتماد الاكاديمي.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"نيل شهادة المطاقه الدوليه للايزو 2018/21001.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"النفتاح على المحيط المحلي الاقليمي والدولي من خلال اتفاقيات التبادل الثقافي والعلمي.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الحصول على اعتماد وطني للبرامج الاكاديميه في الكليه ومن خلال تطبيق معايير الاعتمام المؤسسي .\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الوصول الى مخرجات تعليميه عالية الجوده مؤهله للدخول الى سوق العمل .\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"دعم البحث العلمي بما يحقق مستوى عالي للبحث والتطويريمكننا المنافسه من خلاله وباحثين قادرين على احداث تغيرات علميه ومعرفيه في المجتمع.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"خلق نواة دعم للمجتمع وسوق العمل تتكون من خلالها كلية النسور الجامعة رائده في تهيئة الخريجين للعمل الوظيفي داخل وخارج البلد.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\",\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\"},\"insert\":\"\\n\\n\"},{\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"vision2\\n\"}]}', '{\"ops\":[{\"insert\":\"message2\\n\"}]}', '{\"ops\":[{\"insert\":\"goals\\n\"}]}', 6, '2021-08-22 11:06:18', 1),
(6, '{\"ops\":[{\"insert\":\"نراتلبيلاتزنمكنتادل\\n\"}]}', '{\"ops\":[{\"insert\":\"تهاعلغبفيطبذلدازترنو\\n\"}]}', '{\"ops\":[{\"insert\":\"تالغعبفذل\\n\"}]}', '{\"ops\":[{\"insert\":\"نحاعلغبفيقسطبذلدازتنرمو\\n\"}]}', '{\"ops\":[{\"insert\":\"ونرتالبطيبذلدازتنر\\n\"}]}', '{\"ops\":[{\"insert\":\"البذطيبذلدازترنو\\n\"}]}', 17, '2021-08-24 18:13:06', 1),
(7, '{\"ops\":[{\"insert\":\"يعتبر قسم تقنيات المختبرات الطبية احد الأقسام المهمة ضمن المجموعة الطبية لما له من دور فعال في توفير الكوادر العاملة في مجال التحليلات المرضية في مختبرات وزارة الصحة و القطاع الخاص, اضافة لما للقسم من دور في دعم الجانب العلمي و البحثي من خلال استثمار دور التدريسيين في رفد البحوث العلمية .\\n\"}]}', '{\"ops\":[{\"insert\":\" تم انشاء قسم تقنيات المختبرات الطبية وفق منهج التطور العلمي واعتمادها البنية الاساس التي يستند عليها القسم للتطور العلمي من دور فعلا في تشخيص و علاج الكثير من الحالات المرضية. كذلك يعمل القسم على فتح جميع الافاق المعرفية والمنهجية لغرض التوسع وبناء حلقات الأرتباط مع المؤسسات والأقسام المناظرة لغرض استكمال المهمة التشخيصية التي تساعد المستفيد للحصول على الدقة و السرعة في تشخيص الحالات المرضية. اضافة الى تبني المنهج البحثي للعاملين في القطاعات ذات العلاقة لغرض الوصول الى منهج عمل وافكار تخدم المجتمع وبشكل عام.\\n\"}]}', '{\"ops\":[{\"insert\":\"الإلمام بالمعلومات النظرية المتعلقة بالأمراض التي يتم تشخيصها مختبريا . \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"فهم وممارسة تقنيات التشخيص المختبري في مجال الأمراض والطفيليات والتقنيات المختبرية المتقدمة وأمراض الدم ونقل الدم والمناعة السريرية وكذلك الأنسجة المرضية والفايروسات والوراثة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الإلمام بالمعلومات العامة المتعلقة بالفسلجة ومبادئ الأحياء الطبي والتشريح والأنسجة كونها معلومات أساسية طبية تساعدهم في فهم طبيعة الجسم في حالتي الصحة والمرض .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"معرفة أخلاقيات المهنة وكيفية التعامل مع المرضى وخصوصياتهم وكذلك معرفة وسائل التواصل معهم ومع أقربائهم بطريقة علمية وإنسانية وكذلك معرفة مبادئ حقوق الإنسان.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"معرفة أساليب إدارة المختبرات والتقنيات المتعلقة بحفظ البيانات وإعداد الإحصائيات الضرورية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"The Department of Medical Laboratory Technologies is one of the important departments within the medical group because of its effective role in providing cadres working in the field of pathological analyzes in the laboratories of the Ministry of Health and the private sector, in addition to the department’s role in supporting the scientific and research side by investing the role of the teaching staff in increasing Scientific research.\\n\"}]}', '{\"ops\":[{\"insert\":\"The Department of Medical Laboratory Technologies was established in accordance with the scientific development approach and its adoption as the basis on which the department is based. Scientific development has actually played a role in diagnosing and treating many pathological conditions. The department also works to open all knowledge and methodological horizons for the purpose of expanding and building links with the corresponding institutions and departments for the purpose of completing the diagnostic task that helps the beneficiary to obtain accuracy and speed in diagnosing diseased cases. In addition to adopting the research approach for workers in the relevant sectors for the purpose of arriving at a work approach and ideas that serve the community and in general.\\n\"}]}', '{\"ops\":[{\"insert\":\"Familiarity with theoretical information related to diseases diagnosed in the laboratory.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Understand and practice laboratory diagnostic techniques in the field of diseases, parasitology, advanced laboratory techniques, hematology, blood transfusion, clinical immunology as well as histology, viruses and genetics.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Familiarity with general information related to physiology, principles of medical biology, anatomy and histology, being basic medical information that helps them understand the nature of the body in both health and disease.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Knowing the ethics of the profession and how to deal with patients and their privacy, as well as knowing the means of communication with them and their relatives in a scientific and humane way, as well as knowledge of human rights principles.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Knowledge of laboratories management methods and techniques related to data preservation and preparation of necessary statistics.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 17, '2021-08-25 05:51:13', 0),
(9, '{\"ops\":[{\"insert\":\"تتمثل الرؤية في قسم القانون في مواكبة التطورات العلمية الحاصلة في حقل القانون والتخصصات الدقيقة فيه والعمل على تطوير وتحسين الأداء وفقاً لمعايير الجودة وتقييم الأداء في الجامعات العراقية والعالمية وضمان تمتع الاساتذة والتدريسيين بالكفاءة العلمية والعملية.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"The vision of the Law Department is to keep pace with the scientific developments in the field of law and its delicate disciplines, to develop and improve performance in accordance with quality standards and to evaluate performance in Iraqi and international universities, and to ensure that professors and teachers enjoy scientific and practical competence.\\n\"}]}', '{\"ops\":[{\"insert\":\"The development of scientific reality in the field of law, theoretically and practically.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the level of competence of law students to qualify them to practice legal specialization in the field of employment, law and other fields.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Adopting and designing the course system according to the standards in the specialization in the corresponding departments.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Adopting and designing the course system according to the standards in the specialization in the corresponding departments.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Seeking that Al-Qassam occupies a distinguished position, not only at the level of the departments of Al-Nisour College, but also at the level of other similar departments in the corresponding universities and educational institutions.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"The department aims to prepare a legal generation that understands the concept of law and the various legal legislations for the purpose of contributing to the service and development of society.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the department’s reputation and the students’ reputation by presenting a developmental and educational message in various legal sciences.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Consolidating the concept of the rules of professional conduct for law students represented in honesty, honesty and ethics in the profession and job and its secrets.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Training law department students by developing their scientific and practical skills and developing scientific research methods, as well as by setting up virtual courts and practicing legal work.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 12, '2021-08-25 06:44:02', 1),
(10, '{\"ops\":[{\"insert\":\"تتمثل الرؤية في قسم القانون في مواكبة التطورات العلمية الحاصلة في حقل القانون والتخصصات الدقيقة فيه والعمل على تطوير وتحسين الأداء وفقاً لمعايير الجودة وتقييم الأداء في الجامعات العراقية والعالمية وضمان تمتع الاساتذة والتدريسيين بالكفاءة العلمية والعملية.\"},{\"attributes\":{\"align\":\"right\",\"direction\":\"rtl\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"تطوير الواقع العلمي في حقل القانون نظريا وعملياً.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"رفع مستوى الكفاءة لدى طلبة القانون بما يؤهلهم لممارسة التخصص القانوني في مجال الوظيفة والمحاماة وغيرها من المجالات الأخرى. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"اعتماد وتصميم نظام المقررات وفق المعايير في الاختصاص في الأقسام المناظرة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تفعيل وتوضيب الإجراءات العلمية والعملية وبرامج التدريب ورفع مهارات الجودة في مخرجات العمليات التعليمية. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"السعي الى ان يحتل القسام مكانة متميزة ليس على مستوى أقسام كلية النسور فحسب وإنما على مستوى الاقسام الاخرى المماثلة في الجامعات والمؤسسات التعليمية المناظرة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"يهدف القسم الى اعداد جيل قانوني مستوعب لمفهوم القانون والتشريعات القانونية المختلفة لغرض الإسهام في خدمة المجتمع وتطوره. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"رفع سمعة القسم وسمعة الطلبة من خلال تقديم رسالة تنموية وتعليمية في مختلف العلوم القانونية. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"ترسيخ مفهوم قواعد السلوك المهني لطلبة القانون المتمثلة في الأمانة والصدق والأخلاق في المهنة والوظيفة وأسرارها.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تدريب طلبة قسم القانون من خلال تطوير مهاراتهم العلمية والعملية وتطوير أساليب البحث العلمي وكذلك من خلال اقامة المحاكم الافتراضية وممارسة العمل القانوني.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"The vision of the Law Department is to keep pace with the scientific developments in the field of law and its delicate disciplines, to develop and improve performance in accordance with quality standards and to evaluate performance in Iraqi and international universities, and to ensure that professors and teachers enjoy scientific and practical competence.\\n\"}]}', '{\"ops\":[{\"insert\":\"The development of scientific reality in the field of law, theoretically and practically.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the level of competence of law students to qualify them to practice legal specialization in the field of employment, law and other fields.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Adopting and designing the course system according to the standards in the specialization in the corresponding departments.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Adopting and designing the course system according to the standards in the specialization in the corresponding departments.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Seeking that Al-Qassam occupies a distinguished position, not only at the level of the departments of Al-Nisour College, but also at the level of other similar departments in the corresponding universities and educational institutions.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"The department aims to prepare a legal generation that understands the concept of law and the various legal legislations for the purpose of contributing to the service and development of society.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the department’s reputation and the students’ reputation by presenting a developmental and educational message in various legal sciences.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Consolidating the concept of the rules of professional conduct for law students represented in honesty, honesty and ethics in the profession and job and its secrets.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Training law department students by developing their scientific and practical skills and developing scientific research methods, as well as by setting up virtual courts and practicing legal work.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 12, '2021-08-25 06:46:19', 0),
(11, '{\"ops\":[{\"insert\":\"نسعى في تكوين ونشر ثقافة المعرفة الإدارية لتأهيل الطلبة ليكونوا إداريين ناجحين وذوي مهارة وكفاءة عالية على وفق مناهج معتمدة عالميا متوافقة مع المستجدات العلمية في حقل الاختصاص. \\n\"}]}', '{\"ops\":[{\"insert\":\"في ضوء متطلبات اكمال المناهج الدراسية لطلبتنا في مجال إدارة الأعمال من أجل الحصول على درجة البكالوريوس، يسعى القسم إلى تغطية هذه المتطلبات معززة بالمفردات الدراسية واعتماد كل ما يلزم لإكمالها مع إلحاق ذلك بإلزام الطلبة بأعداد البحوث والتقارير المتخصصة وعلى وفق متطلبات جودة التعليم. \\n\"}]}', '{\"ops\":[{\"insert\":\"رفع مهارة وكفاءة الطلبة المقبولين بما يؤدي الى النهوض بالواقع الاقتصادي والاجتماعي والإداري والتخطيطي. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"إعداد خريجين ملمين بالخبرات الإدارية والتقنية متمكن من استخدام الوسائل الحديثة في الحياة العملية. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تقديم كفاءات استشارية في مجال الإدارة العامة وإدارة الأعمال. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تقديم مناهج إدارية وعملية في البحث والتطوير الإداري.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"We seek to form and disseminate a culture of administrative knowledge to qualify students to be successful, skilled, and highly qualified administrators in accordance with internationally approved curricula that are compatible with scientific developments in the field of specialization.\\n\"}]}', '{\"ops\":[{\"insert\":\"In light of the requirements to complete the curricula for our students in the field of business administration in order to obtain a bachelor’s degree, the department seeks to cover these requirements, reinforced with academic vocabulary and adopt everything necessary to complete them, with the addition of obligating students to prepare research and specialized reports in accordance with the requirements of the quality of education.\\n\"}]}', '{\"ops\":[{\"insert\":\"Raising the skill and efficiency of accepted students in a way that leads to the advancement of the economic, social, administrative and planning reality.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Preparing graduates who are familiar with administrative and technical experiences, able to use modern means in practical life.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing advisory competencies in the field of public administration and business administration.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing administrative and practical approaches to administrative research and development.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 13, '2021-08-25 06:50:26', 0),
(12, '{\"ops\":[{\"insert\":\"إعداد خريج متميز في مجال الادارة الرياضية لديه المعلومات والخبرات العلمية والإدارية الكافية التي يوفرها له برنامج القسم لتمكنه من القيام بكافة الأعمال في مختلف الهيئات الرياضية والمساعدة في إجراء البحوث العلمية وتقديم المشورة العلمية والبرامج المتنوعة لقطاعات المجتمع ذات الصلة بالرياضة.\\n\"}]}', '{\"ops\":[{\"insert\":\"إعداد الملاكات العلمية النوعية المؤهلة والمتخصصة في مجال التربية البدنية وعلوم الرياضة ومن خلال تقديم البرامج التعليمية والبحثية والأكاديمية المتميزة والاستفادة من الموارد المتاحة للمساهمة في تربية الفرد والمجتمع فضلاً عن إعداد الباحثين في مجال العلوم الرياضية للارتقاء في الحركة الرياضية العراقية وعلى مختلف المستويات.\\n\"}]}', '{\"ops\":[{\"insert\":\"إعداد كوادر وطنية متخصصة ومؤهلة علمياً وتربويا في مجال تدريس التربية البدنية وكذلك للعمل في مراحل التعليم العام والخاص وقطاع الرياضة و الشباب واللجنة الأولمبية والاتحادات الرياضية والقطاعات العسكرية والاهلية وبالتالي الإسهام في سد الفراغ الكبير المتمثل في الاحتياج ذا التخصص .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"إجراء البحوث العلمية والدراسات الميدانية في مجال التخصص. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تنظيم المؤتمرات والندوات وورش العمل وإجراء المشروعات في مجال التخصص. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"منح الشهادات من خلال الدورات التدريبية لتأهيل العاملين من المدرسين والمتدربين في مجالات التربية البدنية المختلفة التخصصية لتأهيل العاملين في مجالات التربية البدنية المختلفة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"رفع المستوى المهني لدى العاملين في مجال التربية البدنية وتعريفهم بالاتجاهات العلمية والتربوية المعاصرة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Preparing a distinguished graduate in the field of sports management who has sufficient scientific and administrative information and expertise provided by the department’s program to enable him to carry out all work in various sports bodies and help in conducting scientific research and providing scientific advice and various programs for sectors of society related to sports.\\n\"}]}', '{\"ops\":[{\"insert\":\"Preparing qualified and specialized scientific cadres in the field of physical education and sports sciences, by providing distinguished educational, research and academic programs and benefiting from the available resources to contribute to the education of the individual and society, as well as preparing researchers in the field of sports sciences to advance the Iraqi sports movement at various levels.\\n\"}]}', '{\"ops\":[{\"insert\":\"Preparing specialized and qualified national cadres scientifically and educationally in the field of teaching physical education, as well as to work in the stages of public and private education, the sports sector, youth, the Olympic Committee, sports federations, and the military and civil sectors, thus contributing to filling the great void represented in the need for this specialty.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Conducting scientific research and field studies in the field of specialization.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Organizing conferences, seminars and workshops and conducting projects in the field of specialization.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Granting certificates through training courses to rehabilitate teachers and trainees in the various specialized fields of physical education to qualify workers in the various fields of physical education.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the professional level of workers in the field of physical education and introducing them to contemporary scientific and educational trends.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 10, '2021-08-25 06:55:29', 0),
(13, '{\"ops\":[{\"insert\":\"یھدف ھذا القسم لتعزیز القـدرات اللغویة والادبـیة للطلبـة، إضافة إلى تھیئتھم، أساسـاً ، لیكونوا مدرسین ومترجمین وعاملین في قطاعات العمل المختلفة . فالطالب في القسم یدرس مواداً لغویة وأدبیة متنوعة یتم التركیز فیھا على اللغة والصوت والمسرحیة والترجمة والمحـادثة بأسـتخدام وسائل عصریة منھا أحدث المختبـرات الذي یسـاعد الطلبـة على دقـة النطق وذلاقـة اللسـان.ھذا التنوع في المواد الدراسـیة یسـھم إسـھاماً فعالاً في إعداد الطلبــة لســوق العمل في القــطاع العام والخاص .\\nمدة الدراسة في القسم أربع سنوات یمنح في نھایتھا الخریجون بكالوریوس لغة إنكلیزیة.\\n\"}]}', '{\"ops\":[{\"insert\":\"توسيع قاعدة المفردات الدراسية ذات الاختصاص الدقيق .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تطوير الهيكل الاداري وفق متطلبات البرنامج الدراسي باختصاصات تدريسية و بالقاب علمية متقدمة .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الاستعانة بالكليات المناظرة وفق برامج مشتركة من خلال الية المقارنة (Benchmarking).\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"توظيف القدرات الادارية و التدريسية وفق معايير المؤسسية المعتمدة في البلد .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"الحصول على مخرجات تعليمية ذات مهارات و قدرات علمية وفق المتطلبات.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تطوير و تحسين الخطط التربوية والتعليمية لتحقيق جودة المخرجات وفق متطلبات الجهة المستفيدة .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"توسيع قاعدة ادارة المعرفة في برنامج المقررات الدراسية .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"مراجعة توصيف الكوادر التدريسية المطلوبة في برنامج التعليم و التعليم في المؤسسة التعليمية بما يؤمن جودة الاداء و المخرجات .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تعزيز قدرات التدريسيين من خلال اشراكهم بدورات تطويرية في الجامعات العالمية المتقدمة .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تحقيق لقاءات علمية وعقد مؤتمرات و ندوات تصب في برامج العمليات التعليمية مع المؤسسات التعليمية و المناظرة و المستخدمة في هذا المجال .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تحقيق النضج العلمي من خلال الادلة الموضوعية لقياس جودة الاهداف للعمليات التعليمية .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الارتقاء بمستوى الاداء لبرامج العمليات وفق محاور الاعتماد المؤسسي من حيث النتائج و المخرجات .\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"This section aims to enhance the linguistic and literary abilities of students, in addition to preparing them, basically, to be teachers, translators and workers in various sectors of work. The student in the department studies a variety of linguistic and literary subjects that focus on language, sound, drama, translation and conversation using modern methods, including the latest laboratories, which help students with accuracy of pronunciation and eloquence.\\nThe duration of study in the department is four years, at the end of which graduates are awarded a BA in English.\\n\"}]}', '{\"ops\":[{\"insert\":\"Expand the vocabulary base of specific specialization.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Developing the administrative structure in accordance with the requirements of academic programs with teaching specializations and advanced scientific titles.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Using the corresponding faculties according to joint programs through the comparison mechanism (Benchmarking).\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Employing administrative and teaching capabilities in accordance with the institutional standards adopted in the country.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Obtaining educational outcomes with scientific skills and abilities according to the requirements.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Develop and improve educational and educational plans to achieve the quality of outputs according to the requirements of the beneficiary.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Expand the knowledge management base in the course program.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Reviewing the description of the teaching staff required in the teaching and learning program in the educational institution to ensure the quality of performance and outputs.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Strengthening the capabilities of teachers by engaging them in development courses in advanced international universities.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Achieving scientific meetings and holding conferences and symposia that fall into the educational operations programs with educational institutions and the debate and use in this field.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Achieving scientific maturity through objective evidence to measure the quality of objectives for educational processes.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Raising the level of performance of operations programs according to the axes of institutional accreditation in terms of results and outputs.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 11, '2021-08-25 07:02:35', 0),
(14, '{\"ops\":[{\"insert\":\"ثهبتثهخبلاثلاذذ\\n\"}]}', '{\"ops\":[{\"insert\":\"ثعهلاثعثباعهثلبا\\n\"}]}', '{\"ops\":[{\"insert\":\"ثصباثعهباثخبا\\n\"}]}', '{\"ops\":[{\"insert\":\"idhfiehgoiehg\\n\"}]}', '{\"ops\":[{\"insert\":\"oefheogheohg\\n\"}]}', '{\"ops\":[{\"insert\":\"sfheuifgeiugfeig\\n\"}]}', 19, '2021-08-25 07:16:34', 1),
(15, '{\"ops\":[{\"insert\":\" ثلثحخ\\t\\n\"}]}', '{\"ops\":[{\"insert\":\"لثخلﻻث\\n\"}]}', '{\"ops\":[{\"insert\":\"لثهلﻻ\\n\"}]}', '{\"ops\":[{\"insert\":\"fheofh fepogejge\\n\"}]}', '{\"ops\":[{\"insert\":\"jfiejgfe\\n\"}]}', '{\"ops\":[{\"insert\":\"fefghef\\n\"}]}', 20, '2021-08-25 07:58:38', 1),
(16, '{\"ops\":[{\"insert\":\"قسمٌ متميزٌ في تعليم التقنية الإشعاعية والتصوير الطبي، وداعمٌ لمسيرة التنمية والبحث والتطوير في العراق، مسهمٌ في بناء المجتمع الصحي. \\n\"}]}', '{\"ops\":[{\"insert\":\"تأهيل كفاءات محلية قادرة على تلبية احتياجات سوق العمل في مختلف مجالات تقنيات الأشعة والتصوير الطبي مع التركيز على أخلاقيات المهنة وتحقيق شروط السلامة والجودة النوعية، وتقديم خدمات بحثية واستشارية للمجتمع المحلي. \\n\"}]}', '{\"ops\":[{\"insert\":\" يسعى قسم تقنيات الأشعة والسونار بكلية النسور إلى تحقيق عدد من الأهداف لتنمية وتطوير مجال خدمات الأشعة، وذلك من خلال:-\\nتخريج أخصائيين مؤهلين بالمعرفة والمهارات التي تمكّنهم من التعامل بكفاءة مع أجهزة الأشعة والتصوير الطبي وعمل الفحوصات الإشعاعية بمختلف أنواعها.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تدريب الطلاب على كيفية التعامل مع مختلف الحالات المرضية داخل قسم الأشعة وطرق العناية بها، وتبرير التعرض الإشعاعي لها. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"إعداد الطلاب بالأسس الأخلاقية المهنية والإدارية والجودة التصويرية بقسم الأشعة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"توعية الطلاب وتعريفهم بمخاطر التعرض للإشعاع وكيفية حماية العاملين والمرضى من هذه المخاطر. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تنمية القدرات التعليمية والبحثية ومهارات الإبداع لدى الطلاب.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"توفير البيئة المناسبة والإمكانيات اللازمة لتمكين أعضاء هيئة التدريس من زيادة قدراتهم وتطوير مهاراتهم الأكاديمية لضمان جودة مخرجات التعليم.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"A distinguished department in the education of radiological technology and medical imaging, and supports the process of development, research and development in Iraq, contributing to building a healthy society.\\n\"}]}', '{\"ops\":[{\"insert\":\"Qualifying local competencies capable of meeting the needs of the labor market in various fields of radiology and medical imaging techniques with a focus on professional ethics, achieving safety and quality conditions, and providing research and advisory services to the local community.\\n\"}]}', '{\"ops\":[{\"insert\":\"The Department of Radiology and Ultrasound Technologies at Al-Nisour College seeks to achieve a number of goals to develop and develop the field of radiology services, through:\\nGraduating qualified specialists with the knowledge and skills that enable them to efficiently deal with radiology and medical imaging devices and perform radiological examinations of all kinds.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Training students on how to deal with various pathological conditions within the radiology department and ways to care for them, and justify radiation exposure to them.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Preparing students with professional and administrative ethics and imaging quality in the Department of Radiology.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Educating students and familiarizing them with the risks of exposure to radiation and how to protect workers and patients from these risks.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Developing educational and research capabilities and creativity skills of students.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing the appropriate environment and the necessary capabilities to enable faculty members to increase their capabilities and develop their academic skills to ensure the quality of educational outcomes.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 15, '2021-08-30 13:17:13', 0),
(17, '{\"ops\":[{\"insert\":\"قسم رائد في تعليم تقنيات التخدير وداعم مسيرة التنمية والبحث والتطوير في العراق، يساهم في بناء المجتمع الصحي.\\n\"}]}', '{\"ops\":[{\"insert\":\"تأهيل كفاءات محلية قادرة على تلبية احتياجات سوق العمل في مختلف مجالات تقنيات التخدير.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"التركيز على أخلاقيات المهنة وتحقيق شروط السلامة والجودة النوعية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تقديم خدمات بحثية واستشارية للمجتمع المحلي تتضمن هذه الرسالة العناصر الأساسية في تحسين رعاية المرضى في العراق بحيث تشمل التعليم والأبحاث العلمية والتعليم المستمر وخدمة المجتمع.  \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تأهيل كفاءات مهنية في تقنيات التخدير والإسهام بفعالية في البحث العلمي وخدمة المجتمع من خلال بيئة محفزة لاكتساب ونشر وإنتاج المعرفة في تقنيات التخدير توظيف الأمثل للتقنية وبناء الشراكات المحلية والعالمية. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"يهدف القسم الى تنمية وتطوير مجال تقنيات التخدير وذلك من خلال الأهداف التالية:-\\nتخريج أخصائيين مؤهلين بالمعرفة والمهارات التي تمكنهم من التعامل بكفاءة مع اجهزة التخدير بمختلف انواعها. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تدريب الطلبة على كيفية التعامل مع مختلف الحالات المرضية داخل قسم تقنيات التخدير وطرق العناية بها.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"إعداد الطلبة بالأسس الأخلاقية المهنية والإدارية والجودة بتقنيات التخدير. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تنمية القدرات التعليمية والبحثية ومهارات الإبداع لدى الطلاب. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"توفير البيئة المناسبة والامكانيات اللازمة لتمكين أعضاء هيئة التدريس من زيادة قدراتهم وتطوير مهاراتهم الأكاديمية لضمان جودة التعليم. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تشجيع أعضاء هيئة التدريس على المساهمة الفاعلة في البحوث العلمية والدراسات الأكاديمية. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الاستفادة من الخبرات الأكاديمية والمهنية لأعضاء هيئة التدريس في خدمة الجامعة والمساهمة في حل بعض المشكلات التي تواجه المجتمع في مجال تخصصهم.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"A pioneering department in teaching anesthesia techniques and supporting the process of development, research and development in Iraq, contributing to building a healthy society.\\n\"}]}', '{\"ops\":[{\"insert\":\"Qualifying local competencies capable of meeting the needs of the labor market in the various fields of anesthesia techniques.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Focusing on professional ethics and achieving safety and quality conditions.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing research and advisory services to the local community. This mission includes the basic elements in improving patient care in Iraq, including education, scientific research, continuing education, and community service.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Qualifying professional competencies in anesthesia techniques and effectively contributing to scientific research and community service through a stimulating environment for acquiring, disseminating and producing knowledge in anesthesia techniques, optimizing the use of technology and building local and global partnerships.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"The department aims to develop and develop the field of anesthesia techniques through the following objectives:-\\nGraduating qualified specialists with the knowledge and skills that enable them to deal efficiently with anesthesia devices of various kinds.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Training students on how to deal with various pathological conditions within the Department of Anesthesia Techniques and Methods of Care for them.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Preparing students with professional and administrative ethics and quality in anesthesia techniques.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Developing educational and research capabilities and creativity skills of students.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing the appropriate environment and the necessary capabilities to enable faculty members to increase their capabilities and develop their academic skills to ensure the quality of education.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Encouraging faculty members to actively contribute to scientific research and academic studies.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Benefiting from the academic and professional experiences of faculty members in serving the university and contributing to solving some problems facing society in their field of specialization.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 16, '2021-08-30 13:27:34', 0),
(18, '{\"ops\":[{\"insert\":\"السعي لتأمين وتحقيق برامج تعليمية وتربوية وإنسانية من أجل رفع مهارات وبناء قدرات المخرجات التعليمية في التعليم والتدريب الصيدلاني والبحث العلمي لتطوير الخدمات الصيدلانية المقدمة للجهات المستفيدة.\\n\"}]}', '{\"ops\":[{\"insert\":\"إعداد صيادلة إكلينيكيين كفوءين حاصلين على شهادة متخصصة بعلوم الصيدلة وفق المعايير العالمية ليكونوا قادرين على تطبيق ممارسات الصيدلة السريرية وتوفير الخدمة العلاجية للمرضى من خلال فتح نوافذ تعليمية وتربوية مع مؤسسات تعليمية مناظرة في هذا المجال للاستفادة من الخبرات المتراكمة لديهم والإعتماد على توصيف برامج أكاديمية في اختصاص الصيدلة العام والتخصصي بما يحقق القدرات في المنافسة مستقبلاً مع نظيراتها.\\n\"}]}', '{\"ops\":[{\"insert\":\"إيجاد بيئة أكاديمية تساعد الطلبة على التطور الأكاديمي. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"إعداد الطلبة حتى يكونوا قادرين على أداء مهامهم الوظيفية كصيدلي بعد التخرج. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تزويد الطلبة بالمؤهلات والمهارات من خلال المحاضرات والمعامل وورش العمل لتخريج طلبة كفوءين ويكونوا ايضاً قادرين على متابعة دراستهم العليا في مجالات الصيدلة المختلفة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"العمل كمركز لخدمة المجتمع من خلال مساعدة أفراده وتقديم المعلومات العلاجية المتخصصة للمرضى منهم وذلك عن طريق المشاركة في الأنشطة الثقافية المقامة وايضاً الندوات والمحاضرات الإرشادية في مجال الصيدلة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"الريادة في مجال أبحاث تقنية النانو العلاجية من خلال إجراء أبحاث ودراسات في مجال العلوم الصيدلية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"دعم نظام إدارة جودة التعليم الصيدلاني من خلال تطوير عملية التعليم والتدريب الصيدلاني بالتحسين والتحديث المستمرين للمناهج والبرامج التعليمية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Seeking to secure and achieve educational, educational and humanitarian programs in order to raise skills and build the capabilities of educational outputs in pharmaceutical education, training and scientific research to develop pharmaceutical services provided to the beneficiaries.\\n\"}]}', '{\"ops\":[{\"insert\":\"Preparing qualified clinical pharmacists who hold a specialized certificate in pharmacy sciences according to international standards to be able to apply clinical pharmacy practices and provide therapeutic services to patients by opening educational and educational windows with corresponding educational institutions in this field to benefit from their accumulated experiences and rely on the description of academic programs in the field of pharmacy General and specialized in order to achieve capabilities in future competition with its counterparts.\\n\"}]}', '{\"ops\":[{\"insert\":\"Creating an academic environment that helps students develop academically.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Preparing students to be able to perform their job duties as a pharmacist after graduation.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing students with qualifications and skills through lectures, laboratories and workshops to graduate qualified students who are also able to pursue their higher studies in various fields of pharmacy.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Working as a community service center by helping its members and providing specialized treatment information to patients by participating in cultural activities, as well as seminars and lectures in the field of pharmacy.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Pioneering in the field of therapeutic nanotechnology research by conducting research and studies in the field of pharmaceutical sciences.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Supporting the quality management system of pharmaceutical education through the development of the process of pharmaceutical education and training with the continuous improvement and updating of educational curricula and programs.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 18, '2021-08-30 13:35:18', 0),
(19, '{\"ops\":[{\"insert\":\"يقدم قسم تقنيات الحاسوب برامج دراسية وخدمات تعليمية عالية الجودة و يسعى من خلالها الى تأهيل الطلبة في تفرعات شبكات إتصالات الحاسوب بهدف توسيع فرص العمل المستقبلي للطلبة, وتجري التفرعات بالتنسيق مع الكليات الحكومية التي تمت التوأمه معها وبأشراف مباشر من وزارة التعليم العالي والبحث العلمي. كما يسعى القسم للتنسيق مع المؤسسات الحكومية والأهلية في التفاعل العلمي معها لتهيئة ارضية لفرص عمل مستقبلية للطلبة, حيث تمت تهيئة مشاريع التخرج بما يتناسب مع احتياجات مؤسسات الدولة المختلفة وذلك ليتم زج الطالب في سوق العمل ليتعايش بشكل مباشر مع الحياة العملية.\\n\"}]}', '{\"ops\":[{\"insert\":\"تخريج المهندس القادر على اجراء البحوث الاساسية والتطبيقية في العلوم الهندسية المرتبطة بالحاسبات بصورة تمكن من تطوير البحث العلمي وايجاد الحلول العلمية والعملية للمشاكل التي تواجهها اجهزة الدولة والمصانع المؤسسات والهيئات المختلفة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"القابلية على تصميم بدائل الاجزاء العاطلة في الحاسبة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"اجراء البحوث والدراسات على الحاسبات والبدائل الممكن استخدامها والتطوير المستمر في عمل وصيانة الحاسبة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تفعيل آلية تطوير المشاريع الرقمية في برنامج المختبرات التعليمية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تنشيط المشاريع العلمية ذات القدرة في بناء المعرفة الحديثة لمواكبة التطور التكنولوجي وفق الاختصاص الدقيق.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تطوير التصاميم الهندسية في المجال الالكتروني وأنظمة التحكم والمسيطرات الرقمية في مجال الشبكات والاتصالات وورش العمل.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"تحقيق متطلبات المنظمات الطبية والصناعية في رفع المشاريع الرقمية الالكترونية للكشف عن الحالات المطلوبة تشخيصها بدقة. \"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تأهيل الطلاب في المجال البرمجي ومجال الاتصالات وبرامج الشبكات العالمية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"بناء المشاريع الالكترونية الخاصة بتطبيقات الحياة العلمية في ميادين الحياة المختلفة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"تزويد الطلبة بأحدث المهارات في مجال تكنولوجيا شبكات واتصالات الحاسوب واستكمال التوجه العلمي لمواجهة تحديات صناعة الحوسبة الحديثة.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"دعم الخريجين في ايجاد فرص عمل في شركات القطاعين الخاص والحكومي من خلال التنسيق مع الشركات والدوائر الرسمية واقامة ورش العمل والندوات.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\".دعم التدريسيين والطلبة لتعميق ثقافة البحث العلمي لديهم لما له من اهمية في رصانة الكلية والقسم وتعزيز ذلك في المحافل العلمية المحلية والعالمية.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"The Department of Computer Technologies offers high-quality study programs and educational services and seeks through it to qualify students in the branches of computer communication networks in order to expand future employment opportunities for students. The department also seeks to coordinate with governmental and private institutions in scientific interaction with them to prepare the ground for future job opportunities for students, as graduation projects have been prepared in proportion to the needs of the various state institutions, in order to plunge the student into the labor market to coexist directly with working life.\\n\"}]}', '{\"ops\":[{\"insert\":\"Graduation of the engineer who is able to conduct basic and applied research in engineering sciences related to computers in a way that enables the development of scientific research and finding scientific and practical solutions to the problems faced by state agencies, factories, institutions and various bodies.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"The ability to design replacements for the faulty parts of the calculator.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Conducting research and studies on computers, alternatives that can be used, and continuous development in the work and maintenance of the computer.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Activating the mechanism for developing digital projects in the educational laboratories program.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Activating scientific projects with the ability to build modern knowledge to keep pace with technological development according to the exact specialization.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Developing engineering designs in the electronic field, control systems and digital controllers in the field of networks, communications and workshops.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"Achieving the requirements of medical and industrial organizations in raising electronic digital projects to detect cases that are required to be accurately diagnosed.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Qualifying students in the field of software, communications and global networking programs.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Building electronic projects for scientific life applications in various fields of life.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Providing students with the latest skills in the field of computer networks and communications technology and completing the scientific orientation to meet the challenges of the modern computing industry.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Supporting graduates in finding job opportunities in private and government sector companies through coordination with companies and official departments and holding workshops and seminars.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"},{\"insert\":\"Supporting faculty and students to deepen the culture of scientific research for them because of its importance in the sobriety of the faculty and the department and to promote this in local and international scientific forums.\"},{\"attributes\":{\"list\":\"ordered\"},\"insert\":\"\\n\"}]}', 26, '2021-08-30 13:51:51', 0),
(21, '{\"ops\":[{\"insert\":\"asdwefasd\\n\"}]}', '{\"ops\":[{\"insert\":\"sadq3werdas\\n\"}]}', '{\"ops\":[{\"insert\":\"dwqdqw\\n\"}]}', '{\"ops\":[{\"insert\":\"asfdwefa\\n\"}]}', '{\"ops\":[{\"insert\":\"qwdwq3edqwd\\n\"}]}', '{\"ops\":[{\"insert\":\"dqwdqwdq\\n\"}]}', 13, '2021-09-04 16:13:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `full_name`, `email`, `subject`, `message`, `created_at`, `updated_at`, `is_deleted`) VALUES
(2, 'testtestetstetstetstets', 'test@gamil.com', 'test', 'test', '2021-09-05 18:43:26', '2021-09-05 18:43:26', 0),
(3, 'dfgdfg', 'dfgdfg@gamil.com', 'dfgdf', 'dfgdf', '2021-09-05 18:47:07', '2021-09-05 18:47:07', 0),
(4, 'haider khalid', 'haider@gmai.com', 'test', 'teeeeeeeeeeeeeeest', '2021-09-07 13:49:11', '2021-09-07 13:49:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `ar_name`, `en_name`, `price`, `image`, `ar_description`, `en_description`, `status`, `created_at`, `is_deleted`) VALUES
(1, 'test', NULL, '8000', 'courseImage/nPVQjreMaU8YKhVhIffC5VwMajGzFMTjngj7YknD.jpg', 'sdffdsffdsf', NULL, 0, '2021-07-30 07:24:09', 1),
(2, 'test', NULL, '3000', 'courseImage/NfI3U9CI3sv8IZqYybB1WBru9s25KAgjuupt22u4.jpg', 'sdffdsffdsf', NULL, 0, '2021-07-30 07:24:21', 1),
(3, 'javascript', NULL, '3000', 'courseImage/Y5KKNh1xuZyYlgIKlTHBbJ9FfPcBJq61kaz4msoy.png', 'TESTEST', NULL, 0, '2021-08-15 11:50:25', 1),
(4, 'يعبلثهلاربثهعصالب', 'lkfbjfoibjhoi', '200', 'courseImage/wZe2vHFohvA8MMijdDLRyA3jMh9bDlSVAT1h5PFl.jpg', 'ثهلثهخلثخهص ثهلىث ثختث بثخبث ثخبث بث ث بنث بث نث بتث بتث', 'jkdvn feofenf feofnjnef efoe efefoef efef efoef feikf e', 0, '2021-08-23 11:30:02', 1),
(5, 'دورة مجانية عبر الانترنت من برنامج الغرير للمفكرين اليافعين: كيف تُبرز نفسك في مقابلة العمل', 'Free Online Course from Al Ghurair Young Thinkers Program: How to stand out in a job interview', '25000', 'courseImage/yQf8dBJLF9nKJKbgOUOJZ8ymSi9TmCZ7ikx4Z1jX.jpg', 'دورة مجانية عبر الانترنت من برنامج الغرير للمفكرين اليافعين: كيف تُبرز نفسك في مقابلة العمل دورة مجانية عبر الانترنت من برنامج الغرير للمفكرين اليافعين: كيف تُبرز نفسك في مقابلة العمل', 'Free Online Course from Al Ghurair Young Thinkers Program: How to stand out in a job interview Free Online Course from Al Ghurair Young Thinkers Program: How to stand out in a job interview', 1, '2021-08-25 07:51:58', 0),
(8, 'تيست', 'test', '0', 'courseImage/jRg3bTLkzXHV6ws9MAFtsugVkz8IQsfUSIBhgF34.jpg', 'هخثبخهثابثالثخلثﻻىل', 'ioheohgoehgieo', 1, '2021-09-04 07:57:50', 0),
(9, 'شسي23صثيب', 'SADEWQD', 'هعابللاقف', 'courseImage/FAxY1BLTeG9OqyVt37cYVkEaGX7lhoIYicvZ2gJf.jpg', 'ارعغشب', 'تنلاءشسغ', 0, '2021-09-04 16:05:49', 0),
(10, 'صثبسيتلاىة', 'وةىسؤسخعاةى', 'وةىؤعتيىءم', 'courseImage/gFLYPLitA9XGIV7d1sKtlfLA3PEQek30NWuppVtP.jpg', 'وزممممطززووز', 'صثقثقفقثل', 0, '2021-09-04 16:06:10', 0),
(11, 'صسثيبتلاىهعيةاعه', 'شسيضصيسشي', 'شسبيصثبءشؤ', 'courseImage/B6KwS7T62GyP6Fvp0zc6uajf4Vq7qk7PrWO6BiIw.jpg', 'شسيبثصقسشيصث', 'ضشسيصضثقشسي', 0, '2021-09-04 16:06:28', 0),
(12, 'ضصثيصثقيبشس', 'شيسصثيشسءسضي', 'شسي3يشسءشسي', 'courseImage/QJHQxAE6b8TtNgFQy8j0mpiqFyqYzB39U2gohMNS.jpg', 'يشضشصثيشسيثص', 'يشسبقلسيسيبيس', 0, '2021-09-04 16:06:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `ar_question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ar_question`, `ar_answer`, `en_question`, `en_answer`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'أبحث عن صفحة تحتوي على كل روابط التشكيلات وصفحاتها المهمة', 'للاطلاع على هذه الصفحة، اضغط هنا', NULL, NULL, '2021-08-10 15:40:03', '2021-08-25 07:21:13', 1),
(2, 'أين أجد المواعيد الرسمية لبدء وانتهاء العام الدراسي ومواعيد الامتحانات والعطل؟', 'ان التقويم الجامعي هو تقويم يعَد من قبل وزارة التعليم العالي والبحث العلمي والذي يضم المواعيد الجامعية للاطلاع اضغط هنا', NULL, NULL, '2021-08-11 18:57:08', '2021-08-25 07:21:10', 1),
(3, 'ماهي خطة القبول للدراسات الاولية الصباحي والمسائي؟؟', 'للاطلاع على أسماء الخريجين وحسب تشكبلات جامعة بغداد، اضغط هنا', NULL, NULL, '2021-08-11 18:57:47', '2021-08-25 07:21:08', 1),
(4, 'ماهي خطة القبول للدراسات الا', 'انت كول لييييش؟؟؟؟؟؟؟؟', 'fgfhhtrhthjt', 'hthththththth', '2021-08-15 06:38:21', '2021-08-25 07:21:05', 1),
(5, 'dfgdfg222222', '1dfgfdg222222', 'xcvxcvxc222222', 'dfgdfg222222', '2021-08-21 09:26:23', '2021-08-23 11:53:52', 1),
(6, 'انت لش تاكل زراب', 'جان اكلتك', 'why because eat shit', 'eat you', '2021-08-23 11:59:59', '2021-08-23 12:00:25', 1),
(8, 'اين اجد الجدول الالكتروني للاقسام ؟', '{\"ops\":[{\"insert\":\"يمكنك الوصول للجداول عن طريق الرابط \"},{\"attributes\":{\"link\":\"https://e-learn.nuc.edu.iq/edu/dept\"},\"insert\":\"https://e-learn.nuc.edu.iq/edu/dept\"},{\"insert\":\"\\n\"}]}', 'Where can I find the  E-table for the departments?', '{\"ops\":[{\"insert\":\"You can access the tables via the link \"},{\"attributes\":{\"link\":\"https://e-learn.nuc.edu.iq/edu/dept\"},\"insert\":\"https://e-learn.nuc.edu.iq/edu/dept\"},{\"insert\":\"\\n\"}]}', '2021-08-31 15:01:11', '2021-09-11 10:28:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int NOT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `video_url`, `image`, `created_at`, `updated_at`, `is_deleted`) VALUES
(13, 'https://www.youtube.com/watch?v=Y3-YLxpwWBw', NULL, '2021-09-12 11:21:47', '2021-09-12 11:21:47', 0),
(14, 'https://www.youtube.com/watch?v=l7pG3xOWf0I', NULL, '2021-09-12 11:22:14', '2021-09-12 11:22:14', 0),
(15, 'https://www.youtube.com/watch?v=NAPR2g3ZHj4', NULL, '2021-09-12 12:14:07', '2021-09-12 12:14:07', 0),
(16, NULL, 'galleries/xx4RWxl1MgtoJnIsdzsSDYlvWIkXXScsN55R1qRp.jpg', '2021-09-12 12:21:21', '2021-09-12 12:21:21', 0),
(17, NULL, 'galleries/hgSykFH6MR5vs9uqQEYIR1ToMZgGTEA4aBmD0kx3.jpg', '2021-09-12 12:21:47', '2021-09-12 12:21:47', 0),
(18, NULL, 'galleries/W3LjH2KGnBeMVVyQvYtRRmdzdBYBivJyL2oYMmmo.jpg', '2021-09-12 12:22:06', '2021-09-12 12:22:06', 0),
(19, NULL, 'galleries/mci54gFCchE9jvaolsoJXBUD0x9jI1jHKeFSOGYS.jpg', '2021-09-12 12:22:32', '2021-09-12 12:22:32', 0),
(20, NULL, 'galleries/hlAu72jBltwlimHk7im7CUqZqMGv9M1leoJSeVpc.jpg', '2021-09-12 12:23:00', '2021-09-12 12:23:00', 0),
(21, NULL, 'galleries/84QE83dJpdLSfQuavG544BtPz42gxyzqeJvk5UNm.jpg', '2021-09-12 12:24:00', '2021-09-12 12:24:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `international_rankings`
--

CREATE TABLE `international_rankings` (
  `id` int NOT NULL,
  `ar_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `international_rankings`
--

INSERT INTO `international_rankings` (`id`, `ar_description`, `en_description`, `image`, `link`, `number`, `created_at`, `updated_at`, `is_deleted`) VALUES
(2, 'UI Ranking', 'UI Ranking', 'InternationalRankingsImage/H1uHulLKu5x1KCq78xFizaM37YzbSA9TkFxz7Vjo.png', 'https://greenmetric.ui.ac.id/rankings/ranking-by-region-2020/asia', '46', '2021-08-25 18:51:01', '2021-09-01 10:55:12', 0),
(3, 'Webometrics Ranking', 'Webometrics Ranking', 'InternationalRankingsImage/cDmrB8wMLAPn2dSNjdGQITRqMOFm8eiSvHpDPMqu.jpg', 'https://www.webometrics.info/en/aw/Iraq', '59', '2021-08-25 18:51:02', '2021-09-01 10:42:33', 0),
(8, 'التصنيف الوطني لجودة المعامل التعليمية', 'National Classification for the Quality of Educational Laboratories', 'InternationalRankingsImage/ABf2FyFXN5sPrn6k5y1QBm5Xsd17QS2CGe3NCuZr.jpg', 'https://atu.edu.iq/wp-content/uploads/2021/02/1%D8%AA%D8%B5%D9%86%D9%8A%D9%81-%D8%A7%D9%84%D9%85%D8%AE%D8%AA%D8%A8%D8%B1%D8%A7%D8%AA-ilovepdf-compressed.pdf', '3', '2021-08-26 15:32:52', '2021-09-01 10:28:42', 0),
(11, 'THE Impact Rank', 'THE Impact Rank', 'InternationalRankingsImage/bC5puM6Hs2pIaZZ2Eer0Zj1xddYG6uGAHIaUuUVX.png', 'https://www.timeshighereducation.com/rankings/impact/2021/overall#!/page/1/length/25/locations/IQ/sort_by/scores_overall/sort_order/asc/cols/undefined', '1001', '2021-09-01 10:22:14', '2021-09-01 10:22:14', 0),
(12, 'RUR Ranking', 'RUR Ranking', 'InternationalRankingsImage/vEod3lpHHM6262M76uQtseULQ0trCp364NRX8xOk.png', 'https://roundranking.com/country-rankings/countries-rankings.html#world-2021', '20', '2021-09-01 10:57:51', '2021-09-01 10:57:51', 0),
(13, 'U-Multirank', 'U-Multirank', 'InternationalRankingsImage/WhMtRz8wzCMu3W2bqoXItk9qfEqA6gUi4ze3CO8L.png', 'https://www.umultirank.org/study-at/alnisour-university-college-rankings/', '3', '2021-09-01 11:00:07', '2021-09-01 11:00:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ar_sub_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_sub_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `ar_title`, `ar_description`, `en_title`, `en_description`, `ar_sub_description`, `en_sub_description`, `skills`, `type`, `image`, `user_id`, `created_at`, `is_deleted`) VALUES
(1, 'testtestetstetstetstets', 'test', NULL, NULL, NULL, NULL, 'test', 0, NULL, 1, '2021-07-30 05:10:14', 1),
(13, 'تدريسي', '{\"ops\":[{\"insert\":\"مطلوب تدريسي حاصل على شهادة الدكتوراه او الماجستير في الاختصاص ( التخدير و العناية المركزة )\\n\"}]}', 'Lecturer', '{\"ops\":[{\"insert\":\"A teacher with a doctorate or master\'s degree in the specialty (Anesthesia and Intensive Care) is required\\n\"}]}', 'تدريسي في قسم تقنيات التخدير', 'Lecturer in the Department of Anesthesia Techniques', 'undefined', 0, 'imageJobs/0SS6qDRxXsQjZCsE9KEhcr73BBQluMK2r8ERne3d.jpg', 12, '2021-09-11 10:49:34', 0),
(14, 'تدريسي', '{\"ops\":[{\"insert\":\"مطلوب تدريسي حاصل على شهادة الدكتوراه او الماجستير في الاختصاص ( التخدير )\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"A teacher with a doctorate or master\'s degree in the specialty (Anesthesia ) is required\\n\"}]}', 'تدريسي في قسم تقنيات التخدير', 'lecturer in the Department of Anesthesia Techniques', 'undefined', 0, 'imageJobs/XEEd1A2kEss5bh1ehNm7Tj7SenNkQHIxwoMpQ3Re.jpg', 12, '2021-09-11 10:52:24', 0),
(15, 'تدريسي', '{\"ops\":[{\"insert\":\"مطلوب محاضر حاصل على شهادة الدكتوراه او الماجستير في اختصاص ( التمريض)\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"A lecturer with a doctorate or master\'s degree in the specialty (Nursing) is required\\n\"}]}', 'تدريسي في قسم تقنيات التخدير', 'lecturer In the Department of Anesthesia Techniques', 'undefined', 0, 'imageJobs/dIDGTlJFuyJJDuc20QEfFQbp8h2F9sMezj7vgumv.jpg', 12, '2021-09-11 10:55:37', 0),
(16, 'محاضر', '{\"ops\":[{\"insert\":\"مطلوب محاضر حاصل على شهادة الدكتوراه او الماجستير في الاختصاص ( طب الباطني و الجراحي )\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"A lecturer with a doctorate or master\'s degree in the specialty (Internal medicine and surgery) is required\\n\"}]}', 'محاضر في قسم تقنيات التخدير', 'Lecturer in the Department of Anesthesia Techniques', 'undefined', 0, 'imageJobs/ZamCbFpt3kn3wPaFo10JmeUA5uEGh2BX2ccqFqqt.jpg', 12, '2021-09-11 11:05:29', 0),
(17, 'محاضر', '{\"ops\":[{\"insert\":\"مطلوب محاضر حاصل على شهادة الدكتوراه او الماجستير فيزياء في الاختصاص ( نووية اشعاعية )\\n\"}]}', 'Lecturer', '{\"ops\":[{\"insert\":\"A lecturer with a doctorate or master\'s degree in physics in the specialty (radio-nuclear) is required\\n\"}]}', 'محاضر حاصل على ماجستير او دكتوراه فيزياء', 'Lecturer with a master\'s or doctorate in physics', 'undefined', 0, 'imageJobs/9JDy4rOrEe1qhMFYBi0heIow6sAZ4iFYkyQNZ0nA.jpg', 12, '2021-09-11 11:08:43', 0),
(18, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر طبيب حاصل على شهادة الماجستير او الدكتورا في الاختصاص ( اشعة و سونار)\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"Lecturer of a doctor with a master\'s or doctorate degree in the specialty (radiology and ultrasound)\\n\"}]}', 'محاضر طبيب للتدريس قسم تقنيات الاشعة و السونار', 'Lecturer, doctor, to teach the Department of Radiology and Ultrasound Techniques', 'undefined', 0, 'imageJobs/XxW2i6MclJHiNNXxewkUpoiGIgOzKZfQw8waalGM.jpg', 12, '2021-09-11 11:12:08', 0),
(19, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر حاصل على شهادة ماجستير فيزياء في الاختصاص ( تطبيقات الليزر)\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"Lecturer with a master\'s degree in physics in the specialty (laser applications)\\n\"}]}', 'مطلوب محاضر للعمل في قسم تقنيات الاشعة و السونار', 'lecturer is required to work in the Department of Radiology and Ultrasound Technologies', 'undefined', 0, 'imageJobs/0PS5x3qM5paNWRRm35Ect2kCwfL7WEdU4IH1vPi7.jpg', 12, '2021-09-11 11:15:25', 0),
(20, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر حاصل على شهادة دكتورا طبيب في الاختصاص ( الجراحة)\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"Lecturer with a doctorate degree in specialization (surgery)\\n\"}]}', 'مطلوب محاضر للعمل في قسم تقنيات التخدير', 'lecturer is required to work in the Department of Anesthesia Techniques', 'undefined', 0, 'imageJobs/RwyDFNRHdh1R0cUPVQoakJ4i9TwBfvumzknY2YbU.jpg', 12, '2021-09-11 11:17:22', 0),
(21, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر حاصل على شهادة ماجستير او الدكتوراه في البايولوجي \\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"Lecturer with a master\'s or doctoral degree in biology\\n\"}]}', 'مطلوب محاضر في قسم تقنيات محتبرات الطبية', 'lecturer is required in the Department of Medical Laboratory Technologies', 'undefined', 0, 'imageJobs/qmLdnm67iYxasEJgnl49nCQQTI98IpQuoLUvpeaW.png', 12, '2021-09-11 11:48:24', 0),
(22, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر حاصل على شهادة الماجستير او الدكتوراه في الطفيليات\\n\"}]}', 'Lecturer', '{\"ops\":[{\"insert\":\"Lecturer with a master\'s or doctoral degree in Parasitology\\n\"}]}', 'مطلوب محاضر في قسم تقنيات المختبرات الطبية', 'Lecturer in medical laboratory technology department', 'undefined', 0, 'imageJobs/5atGcRoTzeeG9cYXNXD6p91xeRrKzTRrmjeU4DuP.png', 12, '2021-09-11 11:51:01', 0),
(23, 'محاضر', '{\"ops\":[{\"insert\":\"مطلوب محاضر في قسم تقنيات المختبرات الطبية حاصل على شهادة الماجستير او الدكتوراه في الكيمياء \\n\"}]}', 'Lecturer', '{\"ops\":[{\"insert\":\"A lecturer is required in the Department of Medical Laboratory Technologies with a master\'s or doctoral degree in chemistry\\n\"}]}', 'مطلوب محاضر في قسم تقنيات المختبرات الطبية', 'Lecturer in medical laboratory technology department', 'undefined', 0, 'imageJobs/mvMUvBjb0gLlS5bGJNpnJZSPRVWqfLKg0fMzo9u8.png', 12, '2021-09-11 13:04:01', 0),
(24, 'محاضر', '{\"ops\":[{\"insert\":\"محاضر حاصل على شهادة الماجستير او الدكتوراه في الاختصاص كيمياء صيدلانية\\n\"}]}', 'lecturer', '{\"ops\":[{\"insert\":\"lecturer with a master\'s degree or doctorate in the field of pharmaceutical chemistry\\n\"}]}', 'محاضر حاصل على شهادة الماجستير او الدكتوراه في قسم الصيدلة', 'Lecturer with a master\'s or doctorate degree in the Department of Pharmacy', 'undefined', 0, 'imageJobs/13161OfSzMREKXACj27GFJeA34Fq2ILNCy35OVY2.png', 12, '2021-09-11 13:07:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `graguation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accurate_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `name`, `phone`, `graguation`, `accurate_specialty`, `general_specialty`, `file_cv`, `created_at`, `updated_at`, `is_deleted`) VALUES
(2, 'testtestetstetstetstets1111111', '1234567811', 'test1111111', 'sdfsdf111111111', 'sdf11111111', 'applicationCv/6xmKUBRmKsnkMc8ZzvpTLyNHxsGE198pMHCnKg4j.jpg', '2021-08-25 14:45:35', '2021-08-25 15:02:14', 0),
(3, 'testtestetstetstetstets', '12345678', 'test', 'sdfsdf', 'sdf', 'applicationCv/juEhYI1AKefW3GHGcpcBHSZea91Dj6nlsXPyPMgr.jpg', '2021-08-25 23:31:17', '2021-08-25 23:31:17', 0),
(5, 'حيدر خالد', '7704307520', 'بكلوريوس', 'اتصالات', 'asdad', 'applicationCv/5neihXzyACa6eqaX2a4FiHMH3yYiLzz2gfGs5ydK.jpg', '2021-08-26 14:13:50', '2021-08-26 14:13:50', 0),
(6, 'ihfrihgf', '7701234589', 'iogjhroighjoih', 'girjhgorejhgoh', 'igjroihgeiogh', 'applicationCv/TG7aJyOZMpWpd62wlMSGWlLktWrlWJnZ4Rj6wEtN.png', '2021-09-04 08:30:12', '2021-09-04 08:30:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `en_name`, `ar_name`, `stage_id`, `created_at`, `updated_at`, `is_deleted`) VALUES
(30, 'phesicals', 'الفيزياء', 24, '2021-09-12 10:46:28', '2021-09-12 10:46:28', 0),
(31, 'phesicals', 'الفيزياء', 24, '2021-09-12 10:46:48', '2021-09-12 10:46:48', 0),
(32, 'phesicals', 'الفيزياء', 24, '2021-09-12 10:48:12', '2021-09-12 10:48:12', 0),
(33, 'phesicals', 'الفيزياء', 24, '2021-09-12 10:49:02', '2021-09-12 10:49:02', 0),
(34, 'phesicals', 'الفيزياء', 24, '2021-09-12 10:49:13', '2021-09-12 10:49:13', 0),
(35, 'phesicals', 'الفيزياء', 24, '2021-09-12 13:06:15', '2021-09-12 13:06:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_files`
--

CREATE TABLE `lecture_files` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lecture_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecture_files`
--

INSERT INTO `lecture_files` (`id`, `name`, `file`, `lecture_id`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'الطلبات المستلمة', 'lecturesFile/ilgMaUEF4TjwT8eBNsTDrVzcInm8OPPnzK7vgOga.jpg', 1, '2021-09-04 10:27:23', '2021-09-04 10:27:23', 0),
(2, 'طلبات تم الغائها', 'lecturesFile/Ogi47Bklrvuayy9DZ24wp5Lwz5UlzmjO5rp8kO17.jpg', 1, '2021-09-04 10:27:23', '2021-09-04 10:27:23', 0),
(3, 'طلبات قيد التوصيل', 'lecturesFile/UKX0Y9D0r1LauRm4gWrXkP9xZsE1FP0AkP70GJgy.jpg', 1, '2021-09-04 10:27:23', '2021-09-04 10:27:23', 0),
(4, 'الطلبات المستلمة', 'lecturesFile/WtJyuzrUhC7uaGKHHUeY3Ei8StTbH8VKJQwdRrRq.jpg', 1, '2021-09-04 10:27:57', '2021-09-04 10:27:57', 0),
(5, 'طلبات تم الغائها', 'lecturesFile/igAOihNwDA058Z3SEz12ZC2crb5EqdBydl4hqTPE.jpg', 1, '2021-09-04 10:27:57', '2021-09-04 10:27:57', 0),
(7, 'الطلبات المستلمة', 'lecturesFile/cxMC8NsVeZRvREltg3ghc9IMhenT9B7RkPbYIoDj.jpg', 9, '2021-09-07 07:11:56', '2021-09-07 07:11:56', 0),
(8, 'طلبات تم الغائها', 'lecturesFile/qhO4RXr8TUWbcmZewKNF3K7Yd8LUSu6eF9XzwNF4.jpg', 9, '2021-09-07 07:11:56', '2021-09-07 07:11:56', 0),
(9, 'طلبات قيد التوصيل', 'lecturesFile/MqT5y8Dkyp8gRiZqHRzK93rwJTeOGhRweRVPyBVg.jpg', 9, '2021-09-07 07:11:56', '2021-09-07 07:11:56', 0),
(10, 'anoos', 'lecturesFile/TzPJiwHfgmOXV20tyW08rqV84FuynRcep49LIHLM.png', 10, '2021-09-07 08:38:25', '2021-09-07 08:38:25', 0),
(11, 'wp9378862-windows-11-hd-wallpapers', 'lecturesFile/GehiSuoL2y2sDFFbTdTXOgXCKk9y7czX7U9zzuwN.jpg', 10, '2021-09-07 08:38:25', '2021-09-07 08:38:25', 0),
(12, 'Screenshot from 2021-08-29 21-01-34', 'lecturesFile/ZrgC6gzmc8CmfL8AcIOH0eU6BWQHYwXB8wkPPy1e.png', 10, '2021-09-07 08:38:25', '2021-09-07 08:38:25', 0),
(13, 'wp9378861-windows-11-hd-wallpapers', 'lecturesFile/WVtMua5zQxLFQFUymEAEL4bUY8DGMON8wvDyatFX.jpg', 10, '2021-09-07 08:38:25', '2021-09-07 08:38:25', 0),
(14, 'anoos', 'lecturesFile/2dO2ikOrqZd4EttCbDdmoIih1erbvk2Z6MSy5AfT.png', 12, '2021-09-07 08:46:27', '2021-09-07 08:46:27', 0),
(15, 'wp9378862-windows-11-hd-wallpapers', 'lecturesFile/IhAqCYNRe23xDeCYfg2YpYdZwkOFPD7hcIL88qEp.jpg', 12, '2021-09-07 08:46:27', '2021-09-07 08:46:27', 0),
(16, 'Screenshot from 2021-08-29 21-01-34', 'lecturesFile/sByUy7ZMP1K2n5tomQxHWTKIPrCWRkrShXdakGXO.png', 12, '2021-09-07 08:46:27', '2021-09-07 08:46:27', 0),
(17, 'wp9378861-windows-11-hd-wallpapers', 'lecturesFile/YngxRKIHcyzpR6Vxnk1rPhwVqEx3UYw3tdaf0N3g.jpg', 12, '2021-09-07 08:46:27', '2021-09-07 08:46:27', 0),
(18, 'anoos', 'lecturesFile/DH2joKSg4Qg1PW5qLIQ0NTaoNb2X9FqGr5wpU2lo.png', 13, '2021-09-07 10:19:34', '2021-09-07 10:19:34', 0),
(19, 'wp9378862-windows-11-hd-wallpapers', 'lecturesFile/uIlQGufHGPmqvYC5cbgWiKkUkasOmDgcONpcQvDi.jpg', 13, '2021-09-07 10:19:34', '2021-09-07 10:19:34', 0),
(20, 'Screenshot from 2021-08-29 21-01-34', 'lecturesFile/h7ZesCpmD7rQRPgwkJWYlPnEidyS27oEdPNtzuLT.png', 13, '2021-09-07 10:19:34', '2021-09-07 10:19:34', 0),
(21, 'دولي مسائي', 'lecturesFile/gugvrRzcRhXuJICK3dy1nD9ykk5yr8M9sRC6xCV4.docx', 14, '2021-09-09 07:59:19', '2021-09-09 07:59:19', 0),
(22, 'مرافعات مسائي', 'lecturesFile/06tVDnOUvUsoh4cpcNthv23aGkhmrMP65fHjTwcb.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(23, 'مرافعات صباحي (1)', 'lecturesFile/qK9KVl1tXK37BVyIHMxOt7BICvVeYUDDUrVuAV1h.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(24, 'مرافعات صباحي', 'lecturesFile/pyGUb7bxD8RokRnhGkUTfp6BMYpBpWnLwMgjImcZ.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(25, 'عقود مسائي', 'lecturesFile/NW59iMjv8M6dqGLJ8NNjG4aTFGgUGwxEMqmDvQGl.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(26, 'عقود صباحي', 'lecturesFile/sdqfnQC1976TBvUHGuhlBWalCEUEO6EVCJaQcYV0.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(27, 'عقوبات مسائي', 'lecturesFile/5EhuBN9Oqg1D9UZgvOhy6YqHJ8uAsuZ2vhoqbkqG.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(28, 'عقوبات صباحي', 'lecturesFile/A3XpgFtLS3qMEZpW1x8ZMPMBMd0gROHv95WnILsN.docx', 15, '2021-09-09 08:12:34', '2021-09-09 08:12:34', 0),
(29, 'مرافعات مسائي', 'lecturesFile/XDpgRBsFWdLr4xdQSzmNAF1SRpMAyVtDs2VHDNaX.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(30, 'مرافعات صباحي (1)', 'lecturesFile/amweDNo75niBv73wblPjQSF9UKmH0mHD86zxQzxV.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(31, 'مرافعات صباحي', 'lecturesFile/ZjXQ7iVW3VheQotv1JZ8qpEiQmgnQxbCDh3soctD.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(32, 'عقود مسائي', 'lecturesFile/JesXRixPWU5CeqUYmOWjjqhlErx956aUIZuuqoq0.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(33, 'عقود صباحي', 'lecturesFile/KKwKQsxlk6EIzXCJaqSIzhWc25CRAKmjje4b2AJY.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(34, 'عقوبات مسائي', 'lecturesFile/TDnlsfzYouSQiGmqlFrq9ElBj27ZPBh06FJmRltL.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(35, 'عقوبات صباحي', 'lecturesFile/swoRNIPnT8ebXAcfnHz2TzHVbmks1DcjFbc9CvoV.docx', 16, '2021-09-09 08:12:35', '2021-09-09 08:12:35', 0),
(36, 'wp9378862-windows-11-hd-wallpapers', 'lecturesFile/eEn3zOAvFRqR0C1mq39pZqDk7YZakR3RafCUNZCp.jpg', 17, '2021-09-09 09:43:38', '2021-09-09 09:43:38', 0),
(37, 'wp9378862-windows-11-hd-wallpapers', 'lecturesFile/FeVfZEjoxavTLpfeNzietaMWMXp1J4f7lY57Kp7i.jpg', 18, '2021-09-09 09:44:08', '2021-09-09 09:44:08', 0),
(38, 'ACFrOgA9u92nKGc8kfdgT5ZJBhWbo0bW3LARz9IW_w0CElEK8xb9Ibq8bcltXFBjdkUQqX61C2Y_eRbqpiDuEgyExxrIsYiEbmqPpYejYRZPMnDLJOhLH37ynfpiaYD-to0F2zYU_zuKBXNOREcf', 'lecturesFile/OhpGT6Zi8oHDcmbjNHI8xHtsBpP50rxpkm0V1VRO.pdf', 19, '2021-09-11 10:04:57', '2021-09-11 10:04:57', 0),
(39, 'Lecture 1', 'lecturesFile/4PSLoe9ccKCrT5ROY9lNOzN5b0RBGEC9FiuG84mA.pptx', 20, '2021-09-11 10:06:05', '2021-09-11 10:06:05', 0),
(40, 'Lecture 1', 'lecturesFile/2BXKqHGOAxvlev8cUgwr4MNbTGtdBV5ZAQUUeV3v.pptx', 21, '2021-09-11 10:06:09', '2021-09-11 10:06:09', 0),
(41, 'Lecture 1', 'lecturesFile/Pd94rrgnD5hXTM1wvSoXhEI9i5xW3coekPId0tCG.pptx', 22, '2021-09-11 10:06:09', '2021-09-11 10:06:09', 0),
(42, 'Lecture 1', 'lecturesFile/o9NHQccbcoQqApMkBvDyBa1sSd6nAovsYCq4S2ym.pptx', 23, '2021-09-11 10:06:11', '2021-09-11 10:06:11', 0),
(43, 'Lecture 1', 'lecturesFile/NCSQc9u9tuxI3wlXCcd2h9Ogfeq5pWF6g7MngItG.pptx', 24, '2021-09-11 10:06:11', '2021-09-11 10:06:11', 0),
(44, 'Lecture 1', 'lecturesFile/eVUyLTmbH4oTcC7b8YDL3atbzwglxH2JFlrGkuKU.pptx', 25, '2021-09-11 10:06:11', '2021-09-11 10:06:11', 0),
(45, 'Lecture 1', 'lecturesFile/8q45r8yTgnZ271dHOBKcqZklpNNx9iHHlbBISOQo.pptx', 26, '2021-09-11 10:06:11', '2021-09-11 10:06:11', 0),
(46, 'Lecture 8', 'lecturesFile/b8R0dGZ3r24R2jVUqkMhofhUSPrF3jCbhLulfvKh.docx', 27, '2021-09-11 10:11:43', '2021-09-11 10:11:43', 0),
(47, 'Lecture 7', 'lecturesFile/J3fsUxT2YDbZDoJrQn1NOVL5tt1ZtdjXRnh1AGa6.pptx', 28, '2021-09-11 10:17:36', '2021-09-11 10:17:36', 0),
(48, 'Lecture 1', 'lecturesFile/198NtmQsiAP5GwJp07GBrk652y3lf4jkEbwmIW4N.docx', 29, '2021-09-11 10:20:24', '2021-09-11 10:20:24', 0),
(49, 'Lecture 2', 'lecturesFile/3NvDfs9PISbO3PWD2xOCgM14uHw52U67YjR2yaBP.docx', 29, '2021-09-11 10:20:24', '2021-09-11 10:20:24', 0),
(50, 'Lecture 3', 'lecturesFile/Hj1yXOT5lO3GM6kZmTQD5OjQtcOnah4koYIR6ofu.docx', 29, '2021-09-11 10:20:24', '2021-09-11 10:20:24', 0),
(51, 'Lecture 4', 'lecturesFile/gjk2xl1BwrpL0YWVTED3jiNyK8azXGqMhjp89Ldb.docx', 29, '2021-09-11 10:20:24', '2021-09-11 10:20:24', 0),
(52, 'Lecture 5', 'lecturesFile/AGWIhhRrN5lWfaCEJsDOQJylaKEN9y2BUL3FMPM1.docx', 29, '2021-09-11 10:20:24', '2021-09-11 10:20:24', 0),
(53, 'التعديلات (10)', 'lecturesFile/1K7xiSfOh8fDs0nVkYd2ssim7KeU8h0vwgyvFYVG.docx', 44, '2021-09-15 09:29:55', '2021-09-15 09:29:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(97, '2021_06_19_120111_create_rules_table', 1),
(98, '2021_06_19_150930_create_users_table', 1),
(99, '2021_07_30_012808_create_since_departments_table', 1),
(100, '2021_07_30_013026_create_table_departments_table', 1),
(101, '2021_07_30_013643_create_courses_table', 1),
(102, '2021_07_30_015028_create_news_table', 1),
(103, '2021_07_30_015602_create_tags_table', 1),
(104, '2021_07_30_015928_create_tags_news_table', 1),
(105, '2021_07_30_020127_create_comments_table', 1),
(106, '2021_07_30_021740_create_socials_table', 1),
(107, '2021_07_30_023633_create_teachers_table', 1),
(108, '2021_07_30_023701_create_abouts_table', 1),
(109, '2021_07_30_025717_create_jobs_table', 1),
(110, '2021_07_30_030151_create_presentation_forms_table', 1),
(111, '2021_07_30_102749_create_research_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_title` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int DEFAULT '0',
  `ar_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_description` longtext COLLATE utf8mb4_unicode_ci,
  `ar_sub_description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_sub_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `is_slider` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `ar_title`, `en_title`, `image`, `views`, `ar_description`, `en_description`, `ar_sub_description`, `en_sub_description`, `user_id`, `is_slider`, `created_at`, `is_deleted`) VALUES
(7, 'test', NULL, 'news/ipdW1Hcm1rpjJqbwkp1YkfWKnUP3waVDaenf3tMF.jpg', 0, 'testtestetstetstetstets', NULL, NULL, NULL, 1, 0, '2021-07-30 06:06:35', 1),
(25, 'اتمام كلية النسور الجامعة توزيع نتائج امتحانات الدور الاول لجميع المراحل', 'Part of the completion of Al-Nisour University College, distributing the results of the first round exams for all stages', 'news/gmRNqNE3vx23UrrMmTBnPsT3JmhNN3j86Cs0roe0.png', 73, '{\"ops\":[{\"insert\":\"جانب من اتمام كلية النسور الجامعة توزيع نتائج امتحانات الدور الاول لجميع المراحل مما سيرفد بلدنا العزيز بنخبة من الكادر الطبي و المهندسين التقنين والقانونيين والإداريين والرياضيين والعلوم الاجتماعية. متمنين دوام النجاح والتألق لطلبتنا الاعزاء. \\n(الاعلام وتكنولوجيا المعلومات)\\n\"}]}', '{\"ops\":[{\"insert\":\"Part of the completion of Al-Nisour University College, distributing the results of the first round exams for all stages, which will provide our dear country with an elite group of medical staff, technical engineers, legal, administrative, athletes and social sciences. We wish continued success and brilliance to our dear students.\\n(media and information technology)\\n\"}]}', 'جانب من اتمام كلية النسور الجامعة توزيع نتائج امتحانات الدور الاول لجميع المراحل مما سيرفد بلدنا العزيز بنخبة من الكادر الطبي و المهندسين التقنين', 'Part of the completion of Al-Nisour University College, distributing the results of the first round exams for all stages, which will provide our dear country with an elite group of medical staff,', 12, 0, '2021-08-25 10:38:50', 0),
(26, 'اجتماع حول التصنيف الوطني للجامعات العراقية', 'A meeting on the national classification of Iraqi universities', 'news/j4PIe3mZp1GbF2NYIWVdseZHGXqnRkc1SWkyD4m6.jpg', 6, '{\"ops\":[{\"insert\":\"تم بتاريخ 31/8/2021 ..عقد اجتماع برئاسة السيد عميد كلية النسور الجامعة  المحترم وبحضور كل من السادة رؤساء الاقسام وقسم ضمان الجودة وقسم تكنولوجيا المعلومات  والسادة مقررين الاقسام العلمية واعضاء ارتباط الجودة  وتم مناقش مجموعة من المواضيع على راساها موضوع التصنيف الوطني العراقي واستعدادات الكلية للشروع في تحقيق المتطلبات تم توضيح محاور استمارات التصنيف الوطني من قبل قسمي ضمان الجودة وتكنولوجيا المعلومات والاستماع الى اسئلة الحضور والاجابة عليها وتمخض الاجتماع عن مجموعة من التوصيات ونوجزها بما يلي:\\n • دعم كامل من الادارة العليا المتمثلة بالسيد العميد المحترم لمشروع التصنيف الوطني\\n • التأكيد على تلبية المتطلبات الواردة في التصنيف الوطني بالاطار الزمني المحدد\\n • التأكيد على تفعيل عمل بعض الوحدات التنظيمية في الكلية مثل وحدة متابعة الخريجين\\n • دراسة استحداث وحدة لتسويق النتاجات التعليمية\\n • اعادة النظر بالهيكل التنظيمي والعمل على تطويره عن طريق الاتفاق مع جهات رسمية رصينة لهذا الغرض وتم اختيار مفاتحة المركز الوطني للتطوير الاداري / وزارة التخطيط\\n( الاعلام و تكنولوجيا المعلومات ) \\n\"},{\"attributes\":{\"color\":\"var(--accent)\",\"link\":\"https://www.facebook.com/hashtag/%D9%83%D9%84%D9%8A%D8%A9_%D8%A7%D9%84%D9%86%D8%B3%D9%88%D8%B1_%D8%A7%D9%84%D8%AC%D8%A7%D9%85%D8%B9%D8%A9?__eep__=6&__cft__[0]=AZVZKuUhbCWuEaqEHAuEg3Md-KnRlWSDnZ8p1EmFUvdkEqbjt3mm8HcUePjp-8_eDpiDWCRvttMXCRO-A5fPa5U1IYtTIKwC0zafWZb8KQwOlplMr-t23C8JhyO88iqeS3YuT0fkfDMtuVgP4LzcmuaA&__tn__=*NK-R\"},\"insert\":\"#كلية_النسور_الجامعة\"},{\"insert\":\"\\n\"}]}', '{\"ops\":[{\"insert\":\"A meeting was held on 08/31/2021..a meeting chaired by the esteemed Dean of Al-Nisour College, the University, and in the presence of the heads of the departments the Quality Assurance Department, the Information Technology Department, the rapporteurs of the scientific departments and members of quality and quality, a discussion of topics on top of which is the Iraqi national classification and the college’s preparations, and to start realizing the dream Clarification of the axes of the national award form from before, the answer of happiness, agreement, agreement, award, communication, and the initiation of the meeting, as follows:\\n\\n • Full support from the senior management represented by the esteemed Dean of the National Classification Project\\n • Great Jamahiriya\\n • Good on activating some units in the college, such as following up on graduates\\n • Studying the creation of a unit for marketing educational products\\n • Reconsidering the organizational structure and working to develop the path of agreement with solid official bodies for this, and the approach to the National Center for Administrative Development / Ministry of Planning was chosen.\\n\\n(media and information technology)\\n\\n# Al-Nisour_University College\\n\"}]}', 'عقد اجتماع برئاسة السيد عميد كلية النسور الجامعة  المحترم وبحضور كل من السادة رؤساء الاقسام وقسم ضمان الجودة وقسم تكنولوجيا المعلومات', 'meeting chaired by the esteemed Dean of Al-Nisour College, the University, and in the presence of the heads of the departments', 12, 1, '2021-09-02 09:35:13', 0),
(27, 'انطلاق امتحانات الدور الثاني  لطلبة كلية النسور الجامعة داخل اروقة الكلية و قاعاتها .', 'The launch of the second round exams for the students of Al-Nisour University College inside the corridors and halls of the college.', 'news/0ULxmaQTZUhuk2FbrkVkUl7MXs4xzAVIxUuvFcWI.jpg', 5, '{\"ops\":[{\"insert\":\"استقبال طلبة كلية النسور الجامعة المشمولين بامتحانات الدور الثاني حيث سيتم اداء الامتحانات الحضورية للمواد المقررة من وزارة التعليم العالي و البحث العلمي العراقية داخل اروقة الكلية \\n\\nاما الامتحانات الالكترونية فسيتم اداءها عن طريق الصفوف الالكترونية على منصة كوكل كلاسروم .\\nمتمنين النجاح و الموفقية للجميع .\\n( الاعلام و تكنولوجيا المعلومات )\\n\"}]}', '{\"ops\":[{\"insert\":\"Receiving the students of Al-Nisour University College who are covered by the second round exams, where the attendance exams for the subjects prescribed by the Iraqi Ministry of Higher Education and Scientific Research will be performed inside the corridors of the college\\n\\nAs for the electronic exams, they will be performed through electronic classes on the Google Classroom platform.\\nWishing success and success to all.\\n( Media & IT)\\n\"}]}', 'استقبال طلبة كلية النسور الجامعة المشمولين بامتحانات الدور الثاني حيث سيتم اداء الامتحانات الحضورية للمواد المقررة من وزارة التعليم العالي و البحث العلمي العراقية داخل اروقة الكلية', 'Receiving the students of Al-Nisour University College who are covered by the second round exams,', 12, 1, '2021-09-11 08:00:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `presentation_forms`
--

CREATE TABLE `presentation_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magazine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `ar_title`, `en_title`, `magazine`, `link`, `publish_date`, `teacher_id`, `created_at`, `is_deleted`) VALUES
(8, 'A Highly Selective 8th Order Band Pass Filter for Lightning Remote Sensing Application', 'A Highly Selective 8th Order Band Pass Filter for Lightning Remote Sensing Application', 'Turkish Journal of Computer and Mathematics Education (Vol. 12 No. 11) scopus', 'https://www.turcomat.org/index.php/turkbilmat/article/view/6186', '2021', 26, '2021-08-31 11:59:36', 0),
(9, 'Diamond search improvement for motion estimation high efficiency video  cooling', 'Diamond search improvement for motion estimation high efficiency video  cooling', 'IJISET', '#', '2020', 72, '2021-09-11 13:12:50', 0),
(10, 'Intelligent alarm system for hospitals  using smart phone technology', 'Intelligent alarm system for hospitals  using smart phone technology', 'TELKOMNIKA Journal Telecommunication,  computer,electronics', '#', '2020', 27, '2021-09-11 13:13:47', 0),
(11, 'Mathematical Geometry Based filters I', 'Mathematical Geometry Based filters I', 'International Journal of research computer application and robotic', '#', '2020', 72, '2021-09-11 13:16:03', 0),
(12, 'EDFA Gain Evolution in WDM Transmitting system of the free space optics Fso', 'EDFA Gain Evolution in WDM Transmitting system of the free space optics Fso', 'American scientific research journal for Engineering , Technology and sciences ( ASRJETS)', '#', '2019', 30, '2021-09-11 13:17:13', 0),
(13, 'New design of noise prediction in digital color images', 'New design of noise prediction in digital color images', 'JRCARI', 'https://www.academia.edu/40174734/NEW_DESGIN_OF_NOISE_PREDICTION_IN_DIGITAL_COLOR_IMAGES', '2019', 72, '2021-09-11 13:26:00', 0),
(14, 'Impulse Noise Predication filter using Monte cells simulant', 'Impulse Noise Predication filter using Monte cells simulant', 'IJRSEP', '#', '2019', 72, '2021-09-11 13:27:02', 0),
(15, 'Minimum array element and snapshots for performance analysis based on Direction of Arrival (DOA) estimation', 'Minimum array element and snapshots for performance analysis based on Direction of Arrival (DOA) estimation', 'Sprining . chan', 'https://www.researchgate.net/publication/338437345_Minimum_Array_Elements_and_Snapshots_for_Performance_Analysis_Based_on_Direction_Of_Arrival_DOA_Estimation_Methods', '2019', 49, '2021-09-11 13:27:57', 0),
(16, 'Minimum array element and snapshots for performance analysis based on Direction of Arrival (DOA) estimation', 'Minimum array element and snapshots for performance analysis based on Direction of Arrival (DOA) estimation', 'Sprining . chan', 'https://www.researchgate.net/publication/338437345_Minimum_Array_Elements_and_Snapshots_for_Performance_Analysis_Based_on_Direction_Of_Arrival_DOA_Estimation_Methods', '2019', 27, '2021-09-11 13:28:30', 0),
(17, 'Improvement to motion estimation for high efficiency video coding', 'Improvement to motion estimation for high efficiency video coding', 'Proceeding of the O.S. popov onat', 'https://scholar.google.com/scholar?q=Improvement+to+motion+estimation+for+high+efficiency+video+coding&hl=ar&as_sdt=0&as_vis=1&oi=scholart', '2019', 72, '2021-09-11 13:29:50', 0),
(18, 'Impact of information communication technology on Business firms', 'Impact of information communication technology on Business firms', 'International Journal of scince & Engineering applications P53- vol 8 /Issue02 /56', 'https://www.researchgate.net/publication/330803699_Impact_of_Information_Communication_Technology_on_Business_Firms', '2019', 47, '2021-09-11 13:37:13', 0),
(19, 'Improve the scalability & Performance of fault – tolerate for failable stability routing in network connection', 'Improve the scalability & Performance of fault – tolerate for failable stability routing in network connection', 'International Journal of engineering & technology vol7 /Issue 4/ 6207-6210', 'https://www.sciencepubco.com/index.php/ijet/article/view/26288', '2019', 47, '2021-09-11 13:38:29', 0),
(20, 'Value stream mapping construction with lean production', 'Value stream mapping construction with lean production', 'International journal of research in camp.app&Roboties P1- vol7 /Issue5 /8', '#', '2019', 47, '2021-09-11 13:40:47', 0),
(21, 'https://www.amazon.com/Collaborative-Production-Control-Job-Shop-Manufacturing/dp/6139430011', 'https://www.amazon.com/Collaborative-Production-Control-Job-Shop-Manufacturing/dp/6139430011', 'Noor publishing ISBN 978- 613-9-43001-7 Scopus', 'https://www.amazon.com/Collaborative-Production-Control-Job-Shop-Manufacturing/dp/6139430011', '2019', 47, '2021-09-11 13:43:47', 0),
(22, 'Design of flexible planer Antenna using substrat Gap structure for surface wave reduction', 'Design of flexible planer Antenna using substrat Gap structure for surface wave reduction', 'IEEE scopus', 'https://ieeexplore.ieee.org/abstract/document/8744822/', '2019', 28, '2021-09-11 13:45:11', 0),
(23, 'Adaptive modulation approach parameters effect on LTE uplink waveform', 'Adaptive modulation approach parameters effect on LTE uplink waveform', 'International journal of Engineering of technology', 'https://www.sciencepubco.com/index.php/ijet/article/view/24995', '2018', 28, '2021-09-11 13:47:22', 0),
(24, 'Intelligent alarm system for hospitals using smartphone technology', 'Intelligent alarm system for hospitals using smartphone technology', 'TELKOMNIKA Telecommunication, Computing, Electronics and Control', 'http://journal.uad.ac.id/index.php/TELKOMNIKA/article/view/13262', '2020', 27, '2021-09-11 13:48:27', 0),
(25, 'Intelligent alarm system for hospitals using smartphone technology', 'Intelligent alarm system for hospitals using smartphone technology', 'TELKOMNIKA Telecommunication, Computing, Electronics and Control', 'http://journal.uad.ac.id/index.php/TELKOMNIKA/article/view/13262', '2020', 49, '2021-09-11 13:49:04', 0),
(26, 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'Indian Journal of forensic medicine and toxicology', '#', '2019', 61, '2021-09-11 13:52:13', 0),
(27, 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'Indian Journal of forensic medicine and toxicology', '#', '2019', 57, '2021-09-11 13:52:51', 0),
(28, 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'The role of some vitamins in IRAQI patient with fibromyalgia syndrome', 'Indian Journal of forensic medicine and toxicology', '#', '2019', 57, '2021-09-11 13:54:20', 0),
(29, 'Isolation of some pathogenic bacteria and fungi from students mobile phone', 'Isolation of some pathogenic bacteria and fungi from students mobile phone', 'Indian Journal of public health Research & development', '#', '2019', 61, '2021-09-11 13:56:54', 0),
(30, 'Isolation of some pathogenic bacteria and fungi from students mobile phone', 'Isolation of some pathogenic bacteria and fungi from students mobile phone', 'Indian Journal of public health Research & development', '#', '2019', 57, '2021-09-11 13:57:50', 0),
(31, 'MHC class I polypeptides – related sequence A (MICA) polymorphism associated with Ankylosing spondylitis in IRAQI patient', 'MHC class I polypeptides – related sequence A (MICA) polymorphism associated with Ankylosing spondylitis in IRAQI patient', 'The Journal of research on the lepidoptera', 'https://www.researchgate.net/publication/343532885_MHC_Class_I_Polypeptide-Related_Sequence_A_MICA_Polymorphism_Associationwith_Ankylosing_Spondylitis_in_Iraqi_Patients', '2019', 57, '2021-09-11 13:58:59', 0),
(32, 'Prevalence of intentional parasite in children under age 10 year in Baghdad Governorate', 'Prevalence of intentional parasite in children under age 10 year in Baghdad Governorate', 'The journal of Research on the lepidoptera', 'https://ijop.net/index.php/mlu/article/view/1182', '2019', 57, '2021-09-11 14:01:18', 0),
(33, 'Immunological changes associated with Rheumatoid arthritis', 'Immunological changes associated with Rheumatoid arthritis', 'Journal of Global pharma technology', 'https://www.researchgate.net/publication/331152370_Immunological_Changes_Associated_with_Rheumatoid_Arthritis', '2019', 57, '2021-09-11 14:07:33', 0),
(34, 'Gene sequencing of human toxoplasma Gondii isolated from inoculated sheep', 'Gene sequencing of human toxoplasma Gondii isolated from inoculated sheep', 'Gene sequencing of human toxoplasma Gondii isolated from inoculated sheep', 'https://www.researchgate.net/publication/335992516_Gene_Sequencing_of_Human_Toxoplasma_Gondii_Isolated_from_Inoculated_Sheep', '2018', 57, '2021-09-11 14:08:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `name`, `created_at`, `is_deleted`) VALUES
(1, 'admin', '2021-07-30 01:40:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `section_installments`
--

CREATE TABLE `section_installments` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_batch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `second_batch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `third_batch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fourth_batch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ar_study_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_study_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_stage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_installments`
--

INSERT INTO `section_installments` (`id`, `department_id`, `first_batch`, `second_batch`, `third_batch`, `fourth_batch`, `ar_study_type`, `ar_stage`, `en_study_type`, `en_stage`, `created_at`, `is_deleted`) VALUES
(1, '1', '160000', '160000', '160000', '0', NULL, NULL, NULL, NULL, '2021-08-09 17:28:43', 1),
(2, '1', '60000', '60000', '60000', '0', NULL, NULL, NULL, NULL, '2021-08-09 19:28:55', 1),
(3, '4', '17000', '18000', '19000', '0', NULL, NULL, NULL, NULL, '2021-08-14 14:10:21', 1),
(4, '3', '160000', '160000', '160000', '0', 'صباحي', 'الاولى', NULL, NULL, '2021-08-17 19:05:55', 1),
(5, '6', '1000', '1000', '1000', 'undefined', 'صباحي', 'الاولى', NULL, NULL, '2021-08-23 06:45:37', 1),
(6, '6', '5000', '6000', '0', '0', 'مسائي', 'الرابعة', NULL, NULL, '2021-08-23 07:14:35', 1),
(7, '6', '5000', '6000', '5000', '5000', 'صباحي', 'الاولى', NULL, NULL, '2021-08-23 07:16:11', 1),
(8, '6', '1000', '100', '500', '56632', 'صباحي', 'الثالث', NULL, NULL, '2021-08-23 12:05:56', 1),
(9, '6', '5252', '50520', '52302', '0', 'kuihbk', 'hhu', NULL, NULL, '2021-08-23 13:24:00', 1),
(10, '3', '$60000', '$60000', '$60000', '0', 'صباحي', 'الاولى', NULL, NULL, '2021-08-23 13:25:07', 1),
(13, '21', '52005', '458721', '100000', '100000', 'صباحي', 'مسائي', NULL, NULL, '2021-08-25 08:03:13', 1),
(14, '21', '52005', '458721', '0', '0', 'صباحي', 'مسائي', NULL, NULL, '2021-08-25 08:03:30', 1),
(21, '18', '2000000', '2000000', '2000000', '2000000', '8000000', 'المرحلة الاولى', '8000000', 'First Stage', '2021-08-31 14:47:58', 0),
(23, '15', '1000000', '1000000', '1000000', '1000000', '4000000', 'المرحلة الاولى', '4000000', 'Second Stage', '2021-09-06 13:38:45', 0),
(24, '15', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الثانية', '4000000', 'Second Stage', '2021-09-06 13:40:13', 0),
(25, '15', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الثالثة', '4000000', 'Third Stage', '2021-09-06 13:40:59', 0),
(26, '15', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الرابعة', '4000000', 'Forth Stage', '2021-09-06 13:41:44', 0),
(27, '16', '1000000', '1000000', '1000000', '1000000', '4000000', 'المرحلة الاولى', '4000000', 'First Stage', '2021-09-06 13:42:48', 0),
(28, '16', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الثانية', '4000000', 'Second Stage', '2021-09-06 13:43:44', 0),
(29, '16', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الثالثة', '4000000', 'Third Stage', '2021-09-06 13:45:01', 0),
(30, '16', '2000000', '2000000', '0', '0', '4000000', 'المرحلة الرابعة', '4000000', 'Fourth Stage', '2021-09-06 13:46:28', 0),
(31, '10', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الاولى', '2000000', 'First Stage', '2021-09-06 13:49:36', 0),
(32, '10', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثانية', '2000000', 'Second Stage', '2021-09-06 13:51:42', 0),
(33, '10', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثالثة', '2000000', 'Third Stage', '2021-09-06 13:53:30', 0),
(34, '10', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الرابعة', '2000000', 'Fourth Stage', '2021-09-06 13:59:09', 0),
(35, '11', '500000', '500000', '500000', '500000', '2000000', 'المرحلة الاولى', '2000000', 'First Stage', '2021-09-06 14:01:01', 0),
(36, '11', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثانية', '2000000', 'Second Stage', '2021-09-06 14:02:12', 0),
(37, '11', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثالثة', '2000000', 'Third Stage', '2021-09-06 14:03:51', 0),
(38, '11', '875000', '875000', '0', '0', '1750000', 'المرحلة الرابعة', '1750000', 'Fourth Stage', '2021-09-06 14:05:28', 0),
(39, '12', '625000', '625000', '625000', '625000', '2250000', 'المرحلة الاولى', '2250000', 'First Stage', '2021-09-06 14:09:32', 0),
(40, '12', '1125000', '1125000', '0', '0', '2250000', 'المرحلة الثانية', '2250000', 'Second Stage', '2021-09-06 14:11:17', 0),
(41, '12', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثالثة', '2000000', 'Third Stage', '2021-09-06 14:12:21', 0),
(42, '12', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الرابعة', '2000000', 'Fourth Stage', '2021-09-06 14:13:34', 0),
(43, '13', '625000', '625000', '625000', '625000', '2250000', 'المرحلة الاولى', '2250000', 'First Stage', '2021-09-06 14:27:12', 0),
(44, '13', '1125000', '1125000', '0', '0', '2250000', 'المرحلة الثانية', '2250000', 'Second Stage', '2021-09-06 14:28:26', 0),
(45, '13', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الثالثة', '2000000', 'Third Stage', '2021-09-06 14:29:23', 0),
(46, '13', '1000000', '1000000', '0', '0', '2000000', 'المرحلة الرابعة', '2000000', 'Fourth Stage', '2021-09-06 14:30:42', 0),
(47, '26', '700000', '700000', '700000', '700000', '2800000', 'المرحلة الاولى', '2800000', 'First Stage', '2021-09-06 14:33:43', 0),
(48, '26', '1400000', '1400000', '0', '0', '2800000', 'المرحلة الثانية', '2800000', 'Second Stage', '2021-09-06 14:34:40', 0),
(49, '26', '1400000', '1400000', '0', '0', '2800000', 'المرحلة الثالثة', '2800000', 'Third Stage', '2021-09-06 14:35:37', 0),
(50, '26', '1625000', '1625000', '0', '0', '3250000', 'المرحلة الرابعة', '3250000', 'Fourth Stage', '2021-09-06 14:37:03', 0),
(51, '17', '800000', '800000', '800000', '850000', '3250000', 'المرحلة الاولى', '3250000', 'First Stage', '2021-09-06 14:40:47', 0),
(52, '17', '1625000', '1625000', '0', '0', '3250000', 'المرحلة الثانية', '3250000', 'Second Stage', '2021-09-06 14:41:42', 0),
(53, '17', '1625000', '1625000', '0', '0', '3250000', 'المرحلة الثالثة', '3250000', 'Third Stage', '2021-09-06 14:42:53', 0),
(54, '17', '1625000', '1625000', '0', '0', '3250000', 'المرحلة الرابعة', '3250000', 'Fourth Stage', '2021-09-06 14:43:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `since_departments`
--

CREATE TABLE `since_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `since_departments`
--

INSERT INTO `since_departments` (`id`, `ar_name`, `en_name`, `link`, `logo`, `created_at`, `is_deleted`) VALUES
(1, 'قسم علوم الحاسوب', NULL, NULL, NULL, '2021-07-30 02:02:50', 1),
(2, 'قسم علوم الحاسوب', NULL, NULL, NULL, '2021-07-30 02:06:02', 1),
(3, 'هندسة برامجيات', NULL, NULL, NULL, '2021-07-30 02:06:06', 1),
(4, 'قسم هندسة الميكانيك2', NULL, NULL, NULL, '2021-08-14 13:36:09', 1),
(5, 'هندسة', 'Engineering', NULL, NULL, '2021-08-22 09:36:30', 1),
(6, 'قسم تجريبي', 'test department', NULL, NULL, '2021-08-22 11:05:26', 1),
(7, 'قسم الصيدلة', 'Pharmacy Department', NULL, NULL, '2021-08-24 15:26:08', 1),
(8, 'قسم تقنيات التخدير', 'Department of Anesthesia', NULL, NULL, '2021-08-24 15:27:08', 1),
(9, 'قسم تقنيات الاشعة و السونار', 'Department of X-rays and sonar', NULL, NULL, '2021-08-24 15:28:49', 1),
(10, 'التربية البدنية و علوم الرياضة', 'Physical education and sports science', 'https://e-learn.nuc.edu.iq/edu/dept/6/type', 'departmentLogo/1LZt1GFIVRE08JNYgnTAk9LboYu51mH0Q5JJ6KSV.jpg', '2021-08-24 15:30:09', 0),
(11, 'قسم اللغة الانكليزية', 'English Department', 'https://e-learn.nuc.edu.iq/edu/dept/7/type', 'departmentLogo/THkmi7n5ZnZZ1BhKPKHolqYJdTdb6VYRMo7ejmsX.jpg', '2021-08-24 15:30:46', 0),
(12, 'قسم القانون', 'Law Department', 'https://e-learn.nuc.edu.iq/edu/dept/4/type', 'departmentLogo/l2VQP7Z02WJ2oTFjPFuQiiEjLuTCxwwu5izpcFic.jpg', '2021-08-24 15:31:51', 0),
(13, 'قسم ادارة الاعمال', 'Business Management', 'https://e-learn.nuc.edu.iq/edu/dept/1/type', 'departmentLogo/leqMci9wCubJ8dig1kIVQ1bo0mXxdZyOsqhSzjWB.jpg', '2021-08-24 15:33:01', 0),
(15, 'تقنيات الاشعة و السونار', 'Department of X-rays and sonar', 'https://e-learn.nuc.edu.iq/edu/dept/2/type', 'departmentLogo/ytybj5XAnpKdpkDDgjHZCads53AmPpZvd3HiNqNZ.jpg', '2021-08-24 15:34:39', 0),
(16, 'قسم تقنيات التخدير', 'Department of Anesthesia techniques', 'https://e-learn.nuc.edu.iq/edu/dept/3/type', 'departmentLogo/exOtukG7swRctg7Y5UOZcrghgupt2hbAWrq3v1Ny.jpg', '2021-08-24 15:35:17', 0),
(17, 'قسم تقنيات المختبرات الطبية', 'Medical Laboratory Technologies', 'https://e-learn.nuc.edu.iq/edu/dept/8/type', 'departmentLogo/1VlqLK5XXSBPKHgHLR3OQNeaRwcDsR7V8o56ePxp.jpg', '2021-08-24 15:35:53', 0),
(18, 'قسم الصيدلة', 'Pharmacy Department', 'https://e-learn.nuc.edu.iq/edu/dept/9/type', 'departmentLogo/CTxSUiOMHvZ2y0sfc4RlesVltRfLKulBBGbJsPu3.jpg', '2021-08-25 05:54:31', 0),
(19, 'قسم تجريبي', 'test department', NULL, NULL, '2021-08-25 07:16:05', 1),
(20, 'قسم تجريبي', 'test section', NULL, NULL, '2021-08-25 07:58:02', 1),
(21, 'قسم تجريبي', 'test department', NULL, NULL, '2021-08-25 08:01:55', 1),
(22, 'ikhfioedh`', 'idghgho', NULL, NULL, '2021-08-25 08:39:17', 1),
(23, 'ter', 'trtrtrt', NULL, NULL, '2021-08-25 08:44:08', 1),
(26, 'هندسة تقنيات الحاسبات', 'Computing Technologies Engineering', 'https://e-learn.nuc.edu.iq/edu/dept/1/type', 'departmentLogo/ckEXww8IuK9jD3Qm0kYTDLTh97PvQLtgY3x5zAuS.jpg', '2021-08-30 09:29:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `en_name`, `ar_name`, `department_id`, `created_at`, `updated_at`, `is_deleted`) VALUES
(15, 'First Stage', 'المرحلة الاولى', 15, '2021-09-09 09:01:42', '2021-09-09 09:01:42', 0),
(16, 'Second Stage', 'المرحلة الثانية', 15, '2021-09-09 09:02:19', '2021-09-09 09:02:19', 0),
(17, 'Third Stage', 'المرحلة الثالثة', 15, '2021-09-09 09:03:09', '2021-09-09 09:03:09', 0),
(18, 'Fourth Stage', 'المرحلة الرابعة', 15, '2021-09-09 09:04:39', '2021-09-09 09:04:39', 0),
(20, 'Second stage', 'المرحلة الثانية', 26, '2021-09-09 09:43:06', '2021-09-09 09:43:06', 0),
(21, 'First Stage', 'المرحلة الاولى', 26, '2021-09-09 09:43:47', '2021-09-09 09:43:47', 0),
(22, 'Third stage', 'المرحلة الثالثة', 26, '2021-09-09 09:44:23', '2021-09-09 09:44:23', 0),
(23, 'Fourth Stage', 'المرحلة الرابعة', 26, '2021-09-09 09:44:55', '2021-09-09 09:44:55', 0),
(24, 'First Lecture', 'المرخلة الاولى', 10, '2021-09-12 10:46:14', '2021-09-12 10:46:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students_graguateds`
--

CREATE TABLE `students_graguateds` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `dwor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students_graguateds`
--

INSERT INTO `students_graguateds` (`id`, `name`, `department_id`, `year`, `dwor`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1009, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1010, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1011, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1012, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1013, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1014, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1015, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1016, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1017, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1018, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1019, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1020, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1021, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1022, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1023, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1024, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1025, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1026, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1027, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1028, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1029, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1030, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1031, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1032, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1033, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1034, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1035, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1036, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1037, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1038, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1039, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1040, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1041, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1042, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1043, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1044, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1045, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1046, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1047, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1048, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1049, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1050, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1051, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1052, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1053, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1054, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1055, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1056, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1057, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1058, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1059, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1060, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1061, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1062, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1063, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1064, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1065, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1066, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1067, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1068, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1069, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1070, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1071, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1072, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1073, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1074, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1075, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1076, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1077, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1078, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1079, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1080, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1081, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1082, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1083, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1084, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1085, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1086, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1087, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1088, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1089, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1090, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1091, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1092, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1093, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1094, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1095, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1096, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1097, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1098, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1099, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1100, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1101, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1102, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1103, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1104, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1105, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1106, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1107, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1108, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1109, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1110, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1111, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1112, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1113, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1114, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1115, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1116, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1117, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1118, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1119, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1120, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1121, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1122, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1123, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1124, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1125, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1126, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1127, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1128, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1129, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1130, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1131, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1132, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1133, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1134, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1135, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1136, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1137, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1138, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1139, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1140, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1141, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1142, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1143, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1144, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1145, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1146, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1147, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1148, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1149, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1150, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1151, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1152, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1153, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1154, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1155, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1156, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1157, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1158, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1159, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1160, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1161, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1162, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1163, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1164, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1165, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1166, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1167, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1168, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1169, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1170, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1171, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1172, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1173, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1174, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1175, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1176, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1177, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1178, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1179, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1180, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1181, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1182, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1183, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1184, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1185, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1186, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1187, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1188, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1189, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1190, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1191, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1192, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1193, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1194, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1195, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1196, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1197, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1198, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1199, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1200, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1201, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1202, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1203, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1204, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1205, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1206, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1207, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1208, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1209, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1210, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1211, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1212, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1213, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1214, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1215, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1216, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1217, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1218, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1219, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1220, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1221, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1222, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1223, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1224, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1225, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1226, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1227, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1228, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1229, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1230, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1231, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1232, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1233, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1234, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1235, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1236, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1237, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1238, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1239, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1240, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1241, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1242, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1243, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1244, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1245, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1246, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1247, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1248, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1249, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1250, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1251, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1252, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1253, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1254, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1255, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1256, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1257, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1258, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1259, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1260, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1261, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1262, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1263, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1264, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1265, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1266, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1267, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1268, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1269, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1270, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1271, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1272, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1273, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:31', '2021-09-20 12:16:31', 0),
(1274, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1275, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1276, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1277, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1278, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1279, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1280, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1281, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1282, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1283, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1284, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1285, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1286, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1287, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1288, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1289, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1290, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1291, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1292, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1293, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1294, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1295, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1296, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1297, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1298, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1299, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1300, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1301, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1302, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1303, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1304, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1305, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1306, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1307, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1308, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1309, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1310, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1311, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1312, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1313, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1314, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1315, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1316, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1317, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1318, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1319, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1320, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1321, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1322, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1323, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1324, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1325, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1326, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1327, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1328, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1329, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1330, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1331, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1332, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1333, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1334, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1335, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1336, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1337, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1338, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1339, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1340, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1341, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1342, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1343, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1344, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1345, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1346, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1347, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1348, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1349, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1350, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1351, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1352, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1353, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1354, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1355, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1356, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1357, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1358, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1359, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1360, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1361, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1362, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1363, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1364, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1365, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1366, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1367, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1368, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1369, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1370, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1371, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1372, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1373, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1374, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1375, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1376, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1377, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1378, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1379, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1380, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1381, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1382, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1383, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1384, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1385, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1386, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1387, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1388, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1389, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1390, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1391, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1392, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1393, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1394, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1395, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1396, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1397, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1398, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1399, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1400, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1401, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1402, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1403, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1404, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1405, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1406, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1407, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1408, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1409, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1410, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1411, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1412, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1413, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1414, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1415, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1416, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1417, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1418, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1419, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1420, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1421, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1422, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1423, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1424, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1425, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1426, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1427, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1428, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1429, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1430, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1431, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1432, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1433, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1434, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1435, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1436, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1437, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1438, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1439, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1440, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1441, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1442, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1443, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1444, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1445, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1446, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1447, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1448, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1449, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1450, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1451, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1452, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1453, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1454, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1455, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1456, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1457, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1458, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1459, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1460, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1461, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1462, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1463, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1464, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1465, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1466, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1467, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1468, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1469, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1470, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1471, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1472, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1473, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1474, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1475, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1476, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1477, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1478, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1479, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1480, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1481, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1482, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1483, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1484, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1485, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1486, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1487, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1488, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1489, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1490, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1491, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1492, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1493, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1494, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1495, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1496, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1497, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1498, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1499, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1500, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1501, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1502, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1503, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1504, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1505, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1506, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1507, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1508, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1509, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1510, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1511, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1512, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1513, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1514, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1515, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1516, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1517, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1518, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1519, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1520, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1521, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1522, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1523, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1524, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1525, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1526, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1527, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1528, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1529, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1530, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1531, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1532, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1533, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1534, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1535, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1536, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1537, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1538, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1539, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1540, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1541, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1542, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1543, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1544, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1545, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1546, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1547, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1548, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1549, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1550, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1551, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1552, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1553, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1554, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1555, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1556, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1557, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1558, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1559, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1560, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1561, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1562, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1563, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1564, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1565, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0);
INSERT INTO `students_graguateds` (`id`, `name`, `department_id`, `year`, `dwor`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1566, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1567, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1568, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1569, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1570, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1571, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1572, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1573, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1574, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1575, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1576, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1577, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1578, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1579, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1580, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1581, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1582, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1583, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1584, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1585, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1586, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1587, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1588, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1589, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1590, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1591, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1592, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1593, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1594, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1595, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1596, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1597, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1598, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1599, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1600, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1601, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1602, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1603, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1604, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1605, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1606, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1607, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1608, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1609, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1610, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1611, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1612, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1613, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1614, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1615, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1616, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1617, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1618, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1619, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1620, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1621, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1622, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1623, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1624, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1625, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1626, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1627, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1628, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1629, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1630, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1631, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1632, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1633, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1634, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1635, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1636, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1637, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1638, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1639, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1640, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1641, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1642, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1643, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1644, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1645, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1646, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1647, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1648, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1649, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1650, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1651, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1652, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1653, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1654, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1655, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1656, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1657, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1658, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1659, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1660, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1661, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1662, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1663, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1664, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1665, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1666, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1667, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1668, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1669, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1670, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1671, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1672, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1673, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1674, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1675, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1676, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1677, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1678, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1679, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1680, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1681, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1682, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1683, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1684, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1685, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1686, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1687, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1688, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1689, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1690, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1691, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1692, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1693, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1694, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1695, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1696, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1697, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1698, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1699, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1700, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1701, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1702, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1703, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1704, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1705, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1706, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1707, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1708, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1709, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1710, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1711, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1712, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1713, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1714, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1715, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1716, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1717, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1718, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1719, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1720, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1721, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1722, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1723, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1724, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1725, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1726, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1727, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1728, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1729, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1730, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1731, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1732, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1733, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1734, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1735, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1736, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1737, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1738, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1739, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1740, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1741, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1742, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1743, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1744, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1745, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:32', '2021-09-20 12:16:32', 0),
(1746, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1747, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1748, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1749, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1750, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1751, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1752, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1753, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1754, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1755, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1756, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1757, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1758, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1759, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1760, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1761, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1762, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1763, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1764, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1765, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1766, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1767, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1768, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1769, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1770, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1771, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1772, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1773, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1774, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1775, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1776, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1777, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1778, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1779, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1780, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1781, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1782, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1783, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1784, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1785, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1786, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1787, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1788, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1789, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1790, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1791, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1792, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1793, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1794, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1795, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1796, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1797, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1798, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1799, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1800, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1801, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1802, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1803, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1804, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1805, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1806, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1807, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1808, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1809, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1810, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1811, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1812, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1813, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1814, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1815, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1816, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1817, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1818, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1819, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1820, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1821, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1822, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1823, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1824, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1825, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1826, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1827, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1828, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1829, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1830, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1831, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1832, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1833, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1834, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1835, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1836, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1837, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1838, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1839, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1840, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1841, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1842, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1843, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1844, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1845, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1846, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1847, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1848, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1849, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1850, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1851, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1852, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1853, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1854, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1855, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1856, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1857, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1858, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1859, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1860, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1861, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1862, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1863, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1864, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1865, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1866, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1867, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1868, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1869, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1870, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1871, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1872, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1873, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1874, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1875, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1876, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1877, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1878, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1879, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1880, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1881, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1882, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1883, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1884, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1885, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1886, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1887, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1888, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1889, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1890, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1891, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1892, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1893, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1894, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1895, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1896, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1897, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1898, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1899, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1900, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1901, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1902, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1903, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1904, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1905, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1906, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1907, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1908, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1909, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1910, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1911, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1912, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1913, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1914, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1915, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1916, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1917, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1918, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1919, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1920, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1921, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1922, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1923, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1924, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1925, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1926, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1927, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1928, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1929, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1930, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1931, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1932, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1933, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1934, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1935, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1936, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1937, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1938, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1939, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1940, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1941, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1942, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1943, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1944, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1945, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1946, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1947, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1948, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1949, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1950, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1951, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1952, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1953, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1954, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1955, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1956, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1957, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1958, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1959, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1960, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1961, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1962, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1963, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1964, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1965, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1966, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1967, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1968, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1969, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1970, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1971, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1972, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1973, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1974, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1975, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1976, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1977, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1978, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1979, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1980, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1981, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1982, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1983, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1984, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1985, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1986, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1987, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1988, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1989, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1990, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1991, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1992, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1993, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1994, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1995, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1996, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1997, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1998, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(1999, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2000, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2001, 'حيدر خالد', 10, '2021', 'الثاني', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2002, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2003, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2004, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2005, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2006, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2007, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2008, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2009, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2010, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2011, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2012, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2013, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2014, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2015, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0),
(2016, 'حيدر حمزة', 10, '2021', 'الاول', '2021-09-20 12:16:33', '2021-09-20 12:16:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_departments`
--

CREATE TABLE `table_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_departments`
--

INSERT INTO `table_departments` (`id`, `lesson_name`, `day`, `time`, `department_id`, `created_at`, `is_deleted`) VALUES
(1, 'test', 'sunday', '08:00 - 10:00', 1, '2021-07-30 03:02:18', 0),
(2, 'test', 'sunday', '08:00 - 10:00', 1, '2021-07-30 07:01:27', 0),
(3, 'test', 'sunday', '08:00 - 10:00', 1, '2021-07-30 07:01:28', 0),
(4, 'test11111111', 'sunday', '08:00 - 10:00', 1, '2021-07-30 07:01:29', 1),
(5, 'test', 'sunday', '08:00 - 10:00', 1, '2021-07-30 07:01:30', 0),
(6, 'test', 'sunday', '08:00 - 10:00', 1, '2021-07-30 07:01:30', 0),
(7, 'test2222222', 'Sunday', '12:30 - 01:30', 4, '2021-08-14 13:45:57', 1),
(8, 'Mobile Communication', 'Sunday', '12 - 2 pm', 26, '2021-08-31 12:15:22', 0),
(10, 'eufgeuygf', 'wfef', 'fuebfjebf', 26, '2021-09-12 10:11:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `is_deleted`) VALUES
(2, 'test', '2021-07-30 06:06:26', 0),
(3, 'test2', '2021-07-30 06:06:26', 0),
(4, 'testasxa', '2021-07-30 06:06:35', 0),
(5, 'test2asxa', '2021-07-30 06:06:35', 0),
(6, '[hihi, hjhum]', '2021-08-15 08:31:37', 0),
(7, 'dfgfd,dfgdg,dfgfdg', '2021-08-15 08:33:48', 0),
(8, 'asd,dsf', '2021-08-15 08:52:45', 0),
(9, 'ghj', '2021-08-15 08:53:40', 0),
(10, 'ghjgh', '2021-08-15 08:54:04', 0),
(11, 'fwef,fefef', '2021-08-16 08:06:41', 0),
(12, 'sdfs,fghgf', '2021-08-17 09:42:39', 0),
(13, 'ihrig,rgirhg,irhgor', '2021-08-22 07:24:57', 0),
(14, 'iefh,fheuo,eioehg', '2021-08-22 08:55:17', 0),
(15, 'hrrh,rhrh,rhr', '2021-08-24 13:18:54', 0),
(16, 'كلية النسور الجامعة', '2021-08-25 10:38:50', 0),
(17, 'undefined', '2021-09-02 09:35:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags_news`
--

CREATE TABLE `tags_news` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_news`
--

INSERT INTO `tags_news` (`id`, `news_id`, `tag_id`, `created_at`, `is_deleted`) VALUES
(3, 7, 4, '2021-07-30 06:06:35', 0),
(4, 7, 5, '2021-07-30 06:06:35', 0),
(25, 25, 16, '2021-08-25 10:38:51', 0),
(26, 26, 17, '2021-09-02 09:35:13', 0),
(27, 27, 17, '2021-09-11 08:00:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_graduation_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_general_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_accurate_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_graduation_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_general_specialty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_accurate_specialty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_file_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `is_manager` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `ar_name`, `ar_description`, `en_name`, `en_description`, `email`, `ar_graduation_degree`, `image`, `ar_general_specialty`, `ar_accurate_specialty`, `en_graduation_degree`, `en_general_specialty`, `en_accurate_specialty`, `file_cv`, `en_file_cv`, `department_id`, `is_manager`, `created_at`, `is_deleted`) VALUES
(23, 'م. م. احمد رائد محمد', 'حاصل على شهادة البكلوريوس في هندسة تقنيات الحاسبات و شهادة الماجستير باختصاص النانو الالكترونيك من جامعة مردوفيا ، روسيا', 'Asst. L. Ahmed Raed Mohammed', 'Bachelor\'s degree in Computer Technology Engineering and a Master\'s degree in Nanoelectronics from Mordovia University, Russia', 'ahmed.itm@nuc.edu.iq', 'ماجستير', 'techerImage/mt1qoKJOL7Sz1tFdT7mmtPnbc4JSCGsMHePZfgLO.jpg', 'هندسة تقنيات الحاسبات', 'نانو الكترونيك', 'Master', 'Computing Technologies Engineering', 'Nanoelectronic', 'TeacherCv/d974XmLkpBETrmdkWM4w8blDZkzA5BmiSzmHAmWi.pdf', NULL, 26, 0, '2021-08-30 09:32:34', 0),
(25, 'م. م. منعم حسين علي', 'يسؤسشؤؤؤ', 'Asst. L. Monem Hussein Ali', 'dcdsccd', 'ahmed.itm@nuc.edu.iq', 'ماجستير', 'techerImage/bNYE9iiAVf7ttPRDAzlN29UW9VqvbYlME6kUC6Tv.jpg', 'اقتصاد', 'تمويل مصرفي', 'Master', 'Economie', 'bank financing', 'TeacherCv/MZRabaJq2X6fkVJelqkyEunBQbvJGKbc8ubhSev7.pdf', NULL, 13, 0, '2021-08-30 09:37:00', 0),
(26, 'د. طه رعد الشيخلي', 'حاصل على شهادة الماجستير في نظم الاتصالات من الجامعة التقنية الماليزية وشهادة الدكتوراه في نفس الجامعة بتخصص نظم الاتصالات المتنقلة', 'Dr. Taha Raad Al-Shaikhli', 'Ms.Eng in Telecommunication from University Technical Malaysia Melaka (UTeM) and Ph.D from the same university in Telecommunication systems (Microwave systems', 'taha.r.eng@nuc.edu.iq', 'دكتوراه', 'techerImage/MRoEiOWr4jBNbfGgDwKaf72zWe35nWYe4oxnVAqw.jpg', 'دكتوراه في نظم الاتصالات', 'نظم اتصالات المايكرويف', 'Ph.D', 'Ph.D in Telecommunication Systems', 'Microwave Telecommunication Systems', 'TeacherCv/klChmStCcftHxZIedcXjlxBQXxPhJ0LUW4Crc3wc.pdf', NULL, 26, 0, '2021-08-30 10:21:09', 0),
(27, 'م. بشار سامي بشار', 'حاصل على شهادة الماجستير من الجامعة التقنية الوسطى / الكلية التقنية الهندسية الكهربائية باختصاص الشبكات و الاتصالات', 'Lec. Bashar Sami Bashar', 'Master\'s degree from the Middle Technical University / Electrical Engineering Technical College, specializing in networks and communications', 'bashar.s.eng@nuc.edu.iq', 'ماجستير', 'techerImage/IJerppFORBICtokM18NAVNzDCkp7PqQawnp400ic.jpg', 'ماجستير تقنيات الحاسبات', 'شبكات و اتصالات', 'Master', 'Ms.eng Computer Techniques', 'Network & communications', 'TeacherCv/K4H8bmJxb49cjTWrHLc27O1lK3wkILBrlQ1WIwSC.pdf', NULL, 26, 0, '2021-08-30 10:32:25', 0),
(28, 'م. م. بشار بهاء نوري', 'ماجستير العلوم (الهندسة الكهربائية والإلكترونية - مجال الاتصالات) شرق البحر المتوسط جامعة (تركيا).', 'Asst. L. Bashar Bahaa Noori Qas Elias', 'Master of Science (Electrical and Electronic Engineering- Communication Field), Eastern Mediterranean University (Turkey).', 'bashar.bahaa.eng@nuc.edu.iq', 'ماجستير', 'techerImage/lDmu9RCgWTPxqmoygh8iuVEOCzPEThNcADbaDzF9.png', 'الهندسة الكهربائية والإلكترونية', 'الهندسة الكهربائية والإلكترونية - مجال الاتصالات', 'Master', 'Electrical and Electronic Engineering', 'Electrical and Electronic Engineering- Communication Field', 'TeacherCv/Xb74SRcFPItruJM6FvtM2o1q9BmYrRhHkeIvzvD3.pdf', NULL, 26, 0, '2021-09-01 06:04:10', 0),
(30, 'م. م. مثنى ياسين', 'ماجستير في هندسة الاتصالات من جامعة ماليزيا بيرلز', 'Asst. L. Muthana Yassen Kydir', 'M.Sc. in Communication Engineering, from University Malaysia Perils', 'muthana.y.eng@nuc.edu.iq', 'ماجستير', 'techerImage/wpqibRHEeAmnFwSGbbUhZhxWTFjhFQa5ydpl3wgJ.png', 'هندسة الاتصالات', 'هندسة الاتصالات', 'Master', 'Communication Engineering', 'Communication Engineering', 'TeacherCv/A7xCMtFvl87gasqI7IaOUYJjxUO9DxautIhIOlDv.pdf', NULL, 26, 0, '2021-09-01 07:33:39', 0),
(32, 'م. م. واثق الميالي', 'ماجستير في علوم الكمبيوتر - هندسة البرمجيات في جامعة كولورادو التقنية', 'Asst. L. WATHIK ALMAYALI', 'Msc. in Computer Science –Software Engineering at Colorado Technical University', 'wathik.a.eng@nuc.edu.iq', 'ماجستير', 'techerImage/BKf7yxRzN7oKenXKhy8GmwQv7AgEBKwdqXngM21G.png', 'ماجستير في علوم الكمبيوتر', 'ماجستير في علوم الكمبيوتر', 'Master', 'Msc. in Computer Science', 'Msc. in Computer Science', 'TeacherCv/6nT7DKoNYKdj0ek5so4NjWThaCulQWr4dSHCbeRI.pdf', NULL, 26, 0, '2021-09-01 08:04:24', 0),
(33, 'م. سمر عماد عزت', 'تدريس ماده البيولوجي وماده النباتات الطبيه', 'L. Samar emad izzat', 'Teaching biology and medical plant', 'Samar.e.anesth@nuc.edu.iq', 'دكتوراه', 'techerImage/NhDlZFmsXeXRnFXcGZ35gg5bEplljJY8nlEnHigb.jpg', 'بايولوجي', 'نباتات طبيه', 'Ph.D', 'Biology', 'Medical plant', 'TeacherCv/gqJTR1egA0uBojt2TAwAv6J0CNbwZBvA4zhH5ySy.pdf', NULL, 16, 0, '2021-09-01 08:05:35', 0),
(44, 'د. مصطفى عبدالله', 'طالبة دكتوراه في اللغة الإنجليزية وآدابها بجامعة UPM- ماليزيا .', 'Dr. Mustafa Abdullah', 'Phd student in English Language and Literature in UPM University- Malaysia', 'mustafa.a.english@nuc.edu.iq', 'دكتورا', 'techerImage/aXiDTtKsFlkly4zlalTDJROJL946AekvlYYtEy9V.png', 'دكتوراه في اللغة الإنجليزية', 'اللغة الإنجليزية وآدابها', 'PhD', 'Phd English Language', 'English Language and Literature', 'TeacherCv/uccWaYYxNSAkEWvd7rQ3cIkbUz1wwLfpwYK1WBx6.pdf', NULL, 11, 0, '2021-09-01 08:15:27', 0),
(45, 'د. مصطفى عبدالكريم', 'الدكتوراه: جامعة بغداد / التربية البدنية وعلوم الرياضة', 'Dr. Mustafa Abdulkareem', 'Ph.D: University of Baghdad/Physical Education & Sports Sciences', 'mustafa.a.sport@nuc.edu.iq', 'دكتورا', 'techerImage/Gw2HwY7L7KPSZted7mgm1iw1n48lCd1gVQDPHeHM.png', 'التربية البدنية و علوم الرياضة', 'التربية البدنية و علوم الرياضة', 'PhD', 'Physical Education & Sports Sciences', 'Physical Education & Sports Sciences', 'TeacherCv/SQHboBd2eMdDXmM81v0iuGsVVROxZiHXMvMcySw7.pdf', NULL, 10, 0, '2021-09-01 08:20:38', 0),
(46, 'د. بيان علي عبد', 'دكتوراه في التربية الرياضية ، جامعة بغداد ، العراق ، 1997', 'Dr. Bayan Ali Abd', 'PhD: in Physical Education, University of Baghdad, Iraq, 1997', 'bayan.a.sport@nuc.edu.iq', 'دكتوراه', 'techerImage/NPwOd6qGuM3mRkSc07otMKrAR0GEz5GX70XbyMKb.png', 'دكتوراه في التربية الرياضية', 'دكتوراه في التربية الرياضية', 'PhD', 'PhD in Physical Education', 'PhD in Physical Education', 'TeacherCv/Qzr7QYcUbF4QLUPGrETaMsh5uy231XQyq3ecHA6m.pdf', NULL, 10, 0, '2021-09-01 08:25:06', 0),
(47, 'م. م زينب طه جبر', 'بكلوريوس هندسة انتاج ومعادن وماجستير هندسة صناعية', 'Assist lec. Zainab Taha Jebur', 'works at the Department of Computer Engineering Techniques, Al-Nisour University College. • Bachelor in Production Engineering and Metallurgy/ Industrial Engineering departmentent (Engineering Management). Graduation date of Bachelor at 2009 rating good. • Master of Science (MSc) in Industrial Engineering , specialized in collaborative network , the tittle of my research is (Collaborative Production Control for Job-Shop Manufacturing Systems) by using information flow make (COLL.P.S ) system using (visual.net) , Graduation date of master at 2014', 'Zainab.t.eng@nuc.edu.iq', 'ماجستير', 'techerImage/Vi2b84ClcHjatZly5H105kknbf4c0DPsPGsGgN2I.jpg', 'ماجستيرهندسة انتاج ومعادن', 'ماجستير هندسة صناعية', 'Ph.D', 'ماجستير هندسة انتاج ومعادن', 'Msc Industrial engineering', 'TeacherCv/tbth3GcOH8vynFvUs1r4nGEdcjBTIzCDw3FgkvD4.pdf', NULL, 26, 0, '2021-09-01 08:29:19', 0),
(48, 'د. حمدان رحيم رجاء', 'دكتوراه في التربية الرياضية (جامعة بغداد 1994)', 'Dr. Hamdan Rahim Raja', 'PhD of Physical Education (University of Baghdad in 1994)', 'hamdan.r.sport@nuc.edu.iq', 'دكتوراه', 'techerImage/9HtHqtMM3sJKIXohwEY0Q0qljhMk98uuvtVD7WUV.png', 'دكتوراه في التربية الرياضية', 'دكتوراه في التربية الرياضية', 'PhD', 'PhD of Physical Education', 'PhD of Physical Education', 'TeacherCv/3eSiKpJuPlSXad8bOHp3NA7YdeBWNKbhvvoUfwln.pdf', NULL, 10, 0, '2021-09-01 08:29:36', 0),
(49, 'م.مروه معتز اسماعيل', 'أنا حاصل على درجة الماجستير من الجامعة التكنولوجية / كلية الهندسة الكهربائية والإلكترونية ، متخصص في الهواتف المحمولة والهوائيات', 'lec.Marwa Moutaz Ismail', 'I have a master\'s degree from the University of Technology/collage of Electrical and Electronic Engineering, specializing in mobile and antennas', 'marwa.m.eng@nuc.edu.iq', 'ماجستير', 'techerImage/QzrwYWRKOtZvRrFfaDfmE2Mi2CX9R9oDuth8whdc.jpg', 'هندسة كهرباء', 'موبايل وهوائيات', 'Ms.eng', 'Electrical Engineering', 'mobile and antennas', 'TeacherCv/Lu5K35D40b1CqB3XUMYQ2TpnKrLrNkRoTPmKkPkT.pdf', NULL, 26, 0, '2021-09-01 08:33:55', 0),
(50, 'م.م داليا نايف جاسم', 'طبيبة ، بكالوريوس طب و جراحة عامة ماجستير تخصص أمراض الدم طالبة دكتوراه السنة البحثية الاخيرة تخصص دقيق سرطانات الدم', 'Asst. Lec. Dahlia N. AL-Saidi', 'M.b.Ch.B MSc  Hematology PhD student  Hematology and blood cancers', 'dahlia.n.path@nuc.edu.iq', 'ماجستير', 'techerImage/WXokD2zlox5K2mR9ssFVGtBfiF2DxmATVKjERMdA.jpg', 'طب و جراحة عامة', 'امراض الدم', 'Master', 'M.b.Ch.B', 'Hematology', 'TeacherCv/mvGxYHCs5ypcf26T2cN1vk1S6bpoKzVzJz3MzRvF.pdf', NULL, 17, 0, '2021-09-01 08:37:27', 0),
(51, 'م. م. زينة علي حسين', 'ماجستير في فن اللغويات التطبيقية ، قسم اللغة الإنجليزية ، كلية التربية ، جامعة عدن', 'Asst. L. Zinah Ali Hussain', 'Master Degree in Art of Applied Linguistics, English Department, Faculty of Education, Aden University', 'zinah.a.english@nuc.edu.iq', 'ماجستير', 'techerImage/3GZnUMwsdJvwpSMLR8SSnq1fhJ7FyTroyaaVvBGX.png', 'فن اللغويات التطبيقية', 'اللغة الانكليزية', 'Master', 'Art of Applied Linguistics', 'English Language', 'TeacherCv/mE1iTbJhqD0LoZNFOFl8Os9J9iXsWEk5Lb21RTKx.pdf', NULL, 11, 0, '2021-09-01 08:47:08', 0),
(52, 'م. م زهراء حسين حسان', 'حاصلة على شهادة الماجستير في ادارد الاعمال , جامعة بغداد', 'Assit. Lec Zahraa Hussein Hassan', 'Msc business administration from Baghdad University', 'zahraa.h.bs@nuc.edu.iq', 'ماجستير', 'techerImage/YUq0241shB6JDR7uiSw5VCQkTpz4QmVd4KePEmEk.jpg', 'علوم في الاقتصاد', 'الاقتصاد', 'master', 'sciences in economics', 'economics', 'TeacherCv/05D8YvT8oO1nkl590Nvf6p4LFaCy726O9yFbjNgS.pdf', NULL, 13, 0, '2021-09-01 08:48:46', 0),
(53, 'م.م شمس انمار برهان', 'تدريس  في قسم التخدير لماده الفسلجه العامه للمرحله الاولى ( العملي والنظري ) وكذلك ماده الفسلجه التطبيقيه للمرحله الثانيه ( العملي والنظري ) بالاضافه الى عمل اللجنه الامتحانيه والماستر شيت وكذلك عملت كممثلة لقسم التخدير في قسم جوده اداره المختبرات وقمت بأنشاء فايل بوكس كامل لقسم التخدير .', 'A.L. Shams Anmar Burhan', 'Teaching for two years in the Department of Anesthesia for general physiology for the first stage (practical and theoretical) as well as for applied physiology for the second stage (practical and theoretical) in addition to the work of the examination committee and the master’s sheet. I also worked as a representative of the Anesthesia Department in the Department of Quality Management of Laboratories, and I created a complete file box for the Anesthesia Department.', 'Shams.a.anesth@nuc.edu.iq', 'ماجستير', 'techerImage/aMdJrfGbtwX6mEzqf4C2W4m09fRwAq8LlquUmcxU.jpg', 'انسجه واجنه', 'الاجنه التطبيقي', 'Msc', 'Embryology and histology', 'Applied embryology', 'TeacherCv/RRRlkXtJDwKLr0VNjConbCPWcwlg2wT6nCdeiUTp.jpg', NULL, 16, 0, '2021-09-01 08:53:40', 0),
(54, 'د. اياد حمود احمد', 'دكتوراه في اللغويات. المملكة المتحدة. جامعة دي مونتفورت ، 2017 .', 'Dr. Ayad Hammood Ahmed', 'PhD in Linguistics. United Kingdom. De Montfort University, 2017 .', 'eid.h.english@nuc.edu.iq', 'دكتوراه', 'techerImage/aM1ZHnhDHpVwNuiQKeKxvSTdG0e2YeNqhZoCdRMr.png', 'دكتوراه في اللغويات', 'اللغويات', 'PhD', 'PhD in Linguistics', 'Linguistics', 'TeacherCv/xYaJ7GPEQ3ogRKjfSO8JisjQ6Z88wHsnPo5x8o6e.pdf', NULL, 11, 0, '2021-09-01 09:08:21', 0),
(55, 'ا. م. د. عباس نعيثل نعمة', 'لديه خبره تدريسيه في الدراسات الاوليه والعليا داخل العراق وخارجه ونشر عدد من البحوث  في مجلات  عالميه', 'Asst. Prof. Dr. Abbas Naethel Naama', 'Has a long experience in undergraduates  and postgraduates inside and outside Iraq and published number of researches in international indexed journals.', 'abbas.n.english@nuc.edu.iq', 'دكتوراه', 'techerImage/gyAkpZWApARnszF3fBIKDp99FQHjk8509vRZPF1b.jpg', 'اللغويات التطبيقية', 'اللغويات التطبيقية', 'PhD', 'Applied Linguistics', 'Applied Linguistics', 'TeacherCv/TuqZso5MwTGoxGOw9AO4WLurXgBg00UUeUc7EjFw.pdf', NULL, 11, 0, '2021-09-01 09:13:03', 0),
(56, 'م. م. سهى حازم الشاوي', 'ماجستير في الأدب الإنجليزي. جامعة بغداد - كلية التربية / قسم اللغة الانجليزية', 'Asst. L. Suha Hazim AlShawi', 'Master degree in English literature. Baghdad University – College of education / English department', 'suha.h.english@nuc.edu.iq', 'ماجستير', 'techerImage/HWZkOAVJlHQvZVf5AaxzfNAz7fg3QFsb80O7xqU7.png', 'الأدب الإنجليزي', 'الأدب الإنجليزي', 'Master', 'English literature', 'English literature', 'TeacherCv/ocBMJgaW75jEA2KDfuhjJYIDVwwcrv8HvVr1CXtU.pdf', NULL, 11, 0, '2021-09-01 09:26:32', 0),
(57, 'ا.م.علا كمال عبد القادر', 'خريجة كلية الطب جامعة بغداد ١٩٨٤ ماجستير تقنيات تحليلات مرضية ٢٠٠٤', 'assist. prof. Ola Kamal A.Alkadir', 'MBchb Baghdad Medical college 1984 MSC Meddcal Labrotary Techniques 2004', 'ula.k.path@nuc.edu.iq', 'ماجستير', 'techerImage/uPcj27FLpVqdsQkiO3tNEJhadXEJ03RW755sRnJM.jpg', 'طبيبة اختصاص ماجستير تقنيات تحليلات مرضية', 'مايكروبايولوجي _مناعة سريرية', 'master', 'MD _Msc medical laboratory Technices', 'Microbiology _clinical Immunology', 'TeacherCv/rdUTUpRTyoce2kF5pikK5ghSJ5i7w3ubrpYpAyr1.docx', NULL, 17, 0, '2021-09-02 05:27:46', 0),
(58, 'م.د. نورا ماجد حميد', 'حاصلة على شهادة الدكتوراه في علوم الحياة _ التخصص الدقيق وراثة جزيئية ولي العديد من البحوث المنشورة في مجلات عالمية ضمن مستوعبات سكوبس وكذلك المشاركة في مؤتمرات دولية  كباحثة وحضرت العديد من الندوات والدورات التدريبية .. لي خبرة في التدريس لمدة ثلاثة اعوام بعد حصولي على شهادة الدكتوراه مباشرة', 'Dr. Noora Majid Hameed', 'Have Ph.D degree in biology _ molecular genetics.. have many published researchs in universal journals included in Scopus.. Also have attended in many conferences as a researcher in addition to attendance in many symposiums and training courses.. Have experience in teaching for three years after PhD degree directly', 'noora.anesth@nuc.edu.iq', 'دكتوراه', 'techerImage/qkBlo1b5WWZfdJF751pH2UXD2VrhJdDEQIGefuO3.jpg', 'علوم حياة', 'وراثة جزيئية', 'Ph.D', 'Biology', 'Molecular genetics', 'TeacherCv/aItBmalPod8JUj7zDYGjkpmCtpf8jTov6AfQVbwS.pdf', NULL, 16, 0, '2021-09-02 09:44:02', 0),
(59, 'أ.م رجاء جاسم محمد', 'ماجستير ادارة اعمال', 'Asst. Prof. RAJAA JASIM MOHAMMED', 'MASTER OF BUSINESS ADMINISTRATION', 'Info@nuc.edu.iq', 'ماجستير', 'techerImage/oT3k6bCeStgrzRsyn7WbMnaI4ZbZoWascfiJrooZ.jpg', 'ادارة اعمال', 'ماجستير تقني ادارة عمليات', 'MASTER', 'BUSINESS ADMINISTRATION', 'technical master in operations management', 'TeacherCv/GQdxb0jPJ6iB1hA3XdSM5wsxwjbzQM86koGVJUNh.doc', NULL, 13, 0, '2021-09-02 10:19:15', 0),
(60, 'م.م يحيى ياس خضير', 'ماجستير تشريح وانسجة', 'Ass.lec yahia yass khudhaer', 'M.S.C . anatomy and histology', 'yahia.y.rad@nuc.edu.iq', 'ماجستير', 'techerImage/s76xBapIN9XfegwYjLVeDKmrXaaDNdne9Z7knpAU.jpg', 'طب وجراحة بيطرية', 'طب وجراحة بيطرية', 'Ms.c', 'anatomy and histology', 'Veterinary medicine and surgery', 'TeacherCv/W1u7NshbARllxUf4uClxuUgd0PNBdvvyTP2O3EcN.docx', NULL, 15, 0, '2021-09-04 10:03:44', 0),
(61, 'د. محمد جواد محمد النجار', 'بكلوريوس طب وجراحه ١٩٨٠ جامعة الموصل ,دبلوم عالي جراحة عامه ١٩٩١ مدينه الطب', 'Dr. Mohammed Jawad Najjar', 'MBChB  1980 Mosul,DGS.1991 Medical city ,FICMS.  1992 Medical city ,FRCS 2002 Dublin Ireland', 'Mohammed.j.anesth@nuc.edu.iq', 'دكتوراه', 'techerImage/q6MxDLplOqGAuC7LlPg11ThiYIBnMLiSWpPcc0ui.jpg', 'طبيب جراح استشاري', 'جراحة الجهاز الهظمي', 'PhD', 'Consultant General Surgery', 'G I T consultant Surgeon', 'TeacherCv/N93x8Lbj14g6ZtpF1Lds8rCnC7t5A1dkTExc76BQ.pdf', NULL, 16, 0, '2021-09-04 10:12:55', 0),
(62, 'م. علي عبد الكاظم رحيمة', 'ماجستير رياضيات تطبيقية ومتخصص بادارة المشاريع', 'Lect. Ali Abdul Kadhim Ruhaima', 'Msc on applied mathematics, have specialist in project management', 'ali.abd.eng@nuc.edu.iq', 'undefined', 'techerImage/YWwL6gh61oEax09hLv6VJ6ONePEQqKHIyPlovdq9.jpg', 'ماجستير', 'رياضيات تطبيقية', 'undefined', 'Ms.c', 'Applied Mathematics', 'TeacherCv/1ozZFlo7NcfT903EoCxB1MhYBlbU39IEQoE0F7PC.pdf', NULL, 26, 0, '2021-09-04 10:19:35', 0),
(63, 'م د مهند صادق حسن', 'بورد دكتوراه باطنية اطفال', 'Lect. Mohanad sadeq hasan', 'Pediatric  medicine', 'mohanad.anesth@nuc.edu.iq', 'دكتوراه', 'techerImage/Xi2EJStwxZmDNV9TVOJ8NlgSbM4MkTv1G1SNVPz8.jpg', 'بورد دكتوراه  باطنية اطفال', 'باطنية اطفا لوحديثي الولاده والخدج', 'Ph.D', 'Pediatric medicine', 'Pediatrics', 'TeacherCv/DSutDxCiuUnrh5XSpqbBHX4NuUq6887nE9wOG04b.pdf', NULL, 16, 0, '2021-09-04 10:39:58', 0),
(64, 'م.م. عبدالله رضا فيصل', 'جامعة سليمان / تركيا 2019 الماجستير', 'Assis. Lect. Abdullah Ridha', 'Turkey  2019 Msc', 'abdullah.r.eng@nuc.edu.iq', 'ماجستير', 'techerImage/tWUXLMKILCw46576cDLP3IcVJyfLClF8z5ifVUlD.jpg', 'عمارة و تصميم', 'التصميم', 'Msc', 'Architecture and Design', 'Design', 'TeacherCv/ciKvtoxQxgM7zzanzlHkGddvmUiuc2h8qLiTNWqY.pdf', NULL, 26, 0, '2021-09-04 10:48:18', 0),
(65, 'د. مظهر غايب علي الدليمي', 'دكتوراة في القانون الجنائي', 'Dr Mudher Ghaeb Ali', 'Doctorate in criminal law', 'Mudher.g.a.law@nuc.edu.iq', 'دكتوراة', 'techerImage/3ZoestS0wOqPJcru1UROW7wydYhrh1BeGBs2O4wS.jpg', 'القانون العام', 'القانون الجنائي', 'Doctorate', 'Puplic law', 'Criminal law', 'TeacherCv/ChkoctfxNVsUNj9EP5LjWOlWTnujRtR766lusQ5x.jpg', NULL, 12, 0, '2021-09-04 10:52:03', 0),
(66, 'أ. د. بتول علي أحمد', 'قي عام 1976 انهيت دراسة البكالوريوس في الأحياء المجرية وحصلت بعدها على الماجستير في الأحياء المجهرية/ المناعة السريرية  عام 1979 وعملت كتدريسية في المعهد الطبي الفني / باب المعظم ثم قدمت دراسة حول انشاء الكلية التنية واصبحت مدرسة فيها واكملت دراسة الدكتوراه عام 2003  وخلال فترة خدمتي اشرفت على  7 طلبة دكتوراه و 14 طالب ماجستير وطالبي دبلوم عالي ولي مايزيد على 50 بحث منشور مع  تأليف كتابين ونرجة كتابين في حقل الأختصاص', 'Prof. Dr. Batool Ali Ahmed Al-Haidary', 'I am graduated from College of Science in 1976 & get MSc in 1979,  (Microbiology) at 2003 I have PhD in Clinical Immunogenetic. In 2000 I got my scientific title of Prof. Assist. and be a Prof. in 2020.Twenty three post-graduated PhD & MT students who I had been supervisory for them with more than 50 published research', 'batool.h.path@nuc.edu.iq', 'دكتوراه', 'techerImage/OKBerNpIvmPkbQOzGZN5qu8AOkFu6wVYLkzMduB6.jpg', 'احياء مجهرية / مناعة سريرية', 'مناعة سريرية وراثية', 'PhD', 'Microbiology/ Clinical Immunology', 'Clinical Immunogenetics', 'TeacherCv/s84V5p5FZKrKsVt7styPppRlvOV1tV1SYHq4xVWJ.doc', NULL, 17, 0, '2021-09-04 10:55:28', 0),
(71, 'م. نور قصي عبد الرزاق', 'حاصله على شهادة الماجستير في علوم الاداره الصناعيه', 'Lec.  Noor qusay Abd-Alrzaq', 'I hold a master’s degree in industrial management sciences', 'Noor.Kh.bs@nuc.edu.iq', 'ماجستير', 'techerImage/U8CDAukafSkDCz4vQ535RBqdHCohxc8Irj5gbuJN.jpg', 'ماجستير ادارة الصناعيه', 'ماجستير ادارة الانتاج والعمليات', 'master', 'Master’s industrial managent', 'Master\'s in Production and Operations Management', 'TeacherCv/ZeuSqbQXhfhi7z8d1iGh3tlbZ9DjBmj14wtYkXR5.docx', NULL, 13, 0, '2021-09-05 05:52:36', 0),
(72, 'م.د. جمال كامل خضير الرديني', 'دكتوراه  هندسة اتصالات  اخنصاص في مجال الوسائط المتعددة اختصاص في مجال التعليم المدمج و التعليم الالكتروني', 'L.Dr. Jamal Kamil Kh. Alrudaini', 'Doctor Engineer in Telecommunication Specialist in Multimedia Professional in Blend learning and electronic education', 'jamal.k.eng@nuc.edu.iq', 'دكتوراه', 'techerImage/FVrcxFL9rU40YU6vdol0Flu71r4YB4Pa1TTlcU1z.jpg', 'هندسة اتصالات', 'وسائط متعددة', 'Ph.D', 'Telecommunication Engineering', 'Multimedia', 'TeacherCv/dZFlNYCxQLWyLkTg2ba1mv7AcFnxqJXfVVDWBtmg.pdf', NULL, 26, 0, '2021-09-05 05:56:13', 0),
(73, 'م.م. علي سعدي محسن', 'ماجستير تربية رياضية ,حاصل علئ 7اوسمة علئ مستوئ العرب  حاصل علئ المركز 7 علئ مستوئ العالم  لاعب ومدرب  منتخب وطني للفئات العمرية', 'Assit. Lec. Ali Saadi Mohsin', 'Received 7 medals at the level of the Arabs Ranked 7th in the world Player and coach of the national team for age groups', 'ali.s.sport@nuc.edu.iq', 'ماجستير', 'techerImage/LOnljW64UisKlnvxyYmlOf6hyWxydDtK6OODKau4.jpg', 'التربية البدنية وعلوم الرياضة', 'تعلم حركي - جمناستك', 'Master', 'Physical education and sports science', 'Kinetic learning -gymnastic', 'TeacherCv/NsU8HeeZSfiF7pZt2uMyZ8bXCgYyDnITf0lFH6YL.docx', NULL, 10, 0, '2021-09-05 06:03:52', 0),
(74, 'م.م هالة خالد زكي', 'ماجستير تربية رياضية', 'Assit. Lec. Hala khaled zaki', 'Master\'s Degree in sports science', 'hala.k.sport@nuc.edu.iq', 'ماجستير', 'techerImage/YpfKzIeM1jSjzuaoNHMDHp5ErhVz6oc7ZNiU2m5u.jpg', 'طرائق التدريس/ كرة الطائرة', 'طرائق التدريس', 'Master', 'Teaching methods, fly ball', 'Teaching methods', 'TeacherCv/zW3goBbr8FOmByUfkqzX7Fkr1Lo9rUZZIBbhV8M6.png', NULL, 10, 0, '2021-09-05 06:10:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscrip` int NOT NULL DEFAULT '0',
  `rule_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `password`, `image`, `subscrip`, `rule_id`, `created_at`, `is_deleted`) VALUES
(1, 'haider', 'haider@gmail.com', '07704307520', '$2y$10$vjRYgt2N1NicYD44NpuM5O/k3tQ0ke9ewthSIqjMJpfXqCDFFCUGG', 'uploads/licQzbfGODP4GeRfqeGdSaPcpXavgK0ebfz9jy2y.png', 0, 1, '2021-07-30 01:42:31', 0),
(2, 'Haider Hamza Hussein', 'hayder@dishtele.comw', '07704207111', '$2y$10$V/gn7HdTTmenqxabSYpZ.eTjuddEQIQxRTFGZcJ5o29xlNj3O2H2u', 'uploads/ZPcr04iMmUt3hUze1mTytNOd0hrvqwOvcNY8vWKf.jpg', 0, 1, '2021-08-09 17:15:12', 0),
(9, 'Haider Hamza Hussein', 'haydewr@dishtele.comw', '07704207111', '$2y$10$WDRsqpv3ipDR7fjF0iX/eeXx1DV1GkpsRN1Ath71/8HFXQaBzezMe', NULL, 0, 1, '2021-08-10 13:38:56', 0),
(10, 'Haider Hamza Hussein', 'haider@gmail.com', '07704207111', '$2y$10$IyA2aWHXiO0Zpp42OIyuxuWFtdotEDj7ppkUQmoNiaQgytjJoD2L2', NULL, 0, 1, '2021-08-10 13:39:03', 0),
(12, 'Ahmed raaed', 'ahmed@gmail.com', '07500458975', '$2y$10$MM35RrnkZOc.o.uIRUCoAe8zUYxHeuIs.h1tgOm.OQhFVsvCS11sm', NULL, 0, 1, '2021-08-24 12:31:20', 0),
(18, 'haider', 'haider@yahoo.com', '07701234589', '$2y$10$yOfzadaCnK.9WJFExfnOjeMrRa.wObpvAqbHWw1kRAmNyo4juGUvi', NULL, 0, 1, '2021-09-04 09:03:27', 0),
(19, 'Ahmed raaed', 'ahme45d@gmail.com', '07500458945', '$2y$10$oZq4S3kX1VaeraZyqM1dL.oTgyFitscbjefgOO/YG9r8iz3Q9qOiG', NULL, 0, 1, '2021-09-04 09:07:18', 0),
(20, 'Ahmed raaed', 'ahme45d@gmail.comz', '07504589453', '$2y$10$6BXMBBHUg61NxRo46lsrV.I1gZv/n2b.qzsAHcXGj8yu07ytt43eC', NULL, 0, 1, '2021-09-04 09:08:28', 0),
(21, 'Ahmed raaed', 'ahmesa45d@gmail.comzd', '07504449453', '$2y$10$k1pz3v7oot7lIEgtbduPGuw1vm1w0ISR85rtL6HkoR.xbf0G.Ar/2', NULL, 0, 1, '2021-09-04 09:10:29', 0),
(23, 'haider', 'haider12345@yahoo.com', '07701234589', '$2y$10$Us2Y8WsVcn.3ZnMnldQs5ufaa.hwaQ8jOSrVEjDsx5GEq3HBhN9AS', NULL, 0, 1, '2021-09-04 09:12:15', 0),
(24, 'haider', 'haider123@yahoo.com', '07701234589', '$2y$10$Jwq9xTBJq62Iuf2kCOs9nudD8N1A1qbcESq9.X8KOWNoj2f1iPTIG', NULL, 0, 1, '2021-09-04 09:26:51', 0),
(27, 'Ahmed waleed alsfary', 'hacker.alsfary@gmail.com', '07736152317', '$2y$10$zF94eV1hSaMtNJtHMm/R1eG8LXzuOu/CpmkrX1LUPuc7VJphkitJW', 'uploads/kpLpVW5rEOXTVFha8dw5UkFxWvuhHqRSZiKPIk0S.jpg', 0, 1, '2021-09-04 15:51:33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_department_id_foreign` (`department_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_news_id_foreign` (`news_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `international_rankings`
--
ALTER TABLE `international_rankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_files`
--
ALTER TABLE `lecture_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `presentation_forms`
--
ALTER TABLE `presentation_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presentation_forms_job_id_foreign` (`job_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`),
  ADD KEY `research_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_installments`
--
ALTER TABLE `section_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `since_departments`
--
ALTER TABLE `since_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socials_news_id_foreign` (`news_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_graguateds`
--
ALTER TABLE `students_graguateds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_departments`
--
ALTER TABLE `table_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_departments_department_id_foreign` (`department_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_news`
--
ALTER TABLE `tags_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_news_news_id_foreign` (`news_id`),
  ADD KEY `tags_news_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_department_id_foreign` (`department_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_rule_id_foreign` (`rule_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `international_rankings`
--
ALTER TABLE `international_rankings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lecture_files`
--
ALTER TABLE `lecture_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `presentation_forms`
--
ALTER TABLE `presentation_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_installments`
--
ALTER TABLE `section_installments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `since_departments`
--
ALTER TABLE `since_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students_graguateds`
--
ALTER TABLE `students_graguateds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2017;

--
-- AUTO_INCREMENT for table `table_departments`
--
ALTER TABLE `table_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tags_news`
--
ALTER TABLE `tags_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `since_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `presentation_forms`
--
ALTER TABLE `presentation_forms`
  ADD CONSTRAINT `presentation_forms_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `research`
--
ALTER TABLE `research`
  ADD CONSTRAINT `research_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socials`
--
ALTER TABLE `socials`
  ADD CONSTRAINT `socials_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `table_departments`
--
ALTER TABLE `table_departments`
  ADD CONSTRAINT `table_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `since_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags_news`
--
ALTER TABLE `tags_news`
  ADD CONSTRAINT `tags_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_news_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `since_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rule_id_foreign` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
