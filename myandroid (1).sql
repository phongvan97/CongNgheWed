-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2018 lúc 04:10 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myandroid`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card`
--

CREATE TABLE `card` (
  `id` int(3) NOT NULL,
  `namecard` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Mean` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mean2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `card`
--

INSERT INTO `card` (`id`, `namecard`, `img`, `Mean`, `mean2`) VALUES
(1, 'Át Bích', 'http://192.168.1.131/android/image/atb.png', 'Lá bài này thể hiện nếu bạn đang nằm trong vận xấu, thường những điều bất lợi, phiền não cũng ào ạt kéo đến. Ngược lại, nếu bạn đang nằm trong vận tốt, bạn sẽ có được những thứ tưởng chừng không thể thực hiện được.', 'Chỉ sự buồn rầu, thất vọng, sầu khổ về nội tâm, nỗi niềm phiền muộn riêng tư khó thố lộ với ai, nỗi buồn không tên, nói chung là dù giàu có, tiền bạc dư dả cũng không vơi hết nỗi buồn\r\n– Chỉ sự xui xẻo, rủi ro, tai nạn, thời vận lụn bại, tù tội, hoặc có tang chế, chết người, nguy hiểm đến tính mạng, làm gia tăng độ số xấu nếu đi kèm với các lá bài Bích.'),
(2, 'Hai Bích', 'http://192.168.1.131/android/image/haib.png', 'Vì bạn đặt niềm tin ở mọi người quá lớn nên do vô tình hay cố ý, những người đó thường làm bạn tổn thương vì những đền đáp của họ không như kỳ vọng của bạn.', 'Bạn thường bị những người khác làm bạn bị tổn thương vì bạn đặt ở nơi họ những niềm tin và sự kì vọng quá lớn. Những đền đáp của họ với bạn lại không được như những kì vọng bạn mong muốn.'),
(3, 'Ba Bích', 'http://192.168.1.131/android/image/bab.png', 'Bạn thường gặp nhiều rắc rối và phiền phức mà không biết tìm lối thoát. Hãy tìm kiếm những người mà bạn tin tưởng và tham khảo ý kiến của họ sẽ giúp bạn vượt qua khó khăn.', 'Bạn bế tắc vì gặp quá nhiều khó khăn và rắc rối.'),
(4, 'Bốn Bích', 'http://192.168.1.131/android/image/bonb.png', 'Lời nói của người khác thường ảnh hưởng nhiều tới tâm tư và tinh thần của bạn. Điều này nếu xảy ra với chiều hướng xấu sẽ làm bạn tổn thương nghiêm trọng. Dù khen hay chê, cũng chỉ là một góc nhìn về con người bạn mà thôi, đừng quá đặt nặng vấn đề đó nhé. Bạn hãy là chính mình và luôn hoàn thiện bản thân là được.', 'Bạn dễ bị tổn thường bởi lời nới của người khác, điều này sẽ gây cho bạn những tổn thương rất nghiêm trọng.'),
(5, 'Năm Bích', 'http://192.168.1.131/android/image/namb.png', 'Bạn thường xuyên giúp đỡ mọi người từ công to việc lớn đến những điều nhỏ nhặt hàng ngày. Tuy nhiên bạn cũng thường xuyên gặp những người \"lấy ơn báo oán\" làm ảnh hưởng xấu tới cuộc sống. Dù vậy, người làm việc tốt bao giờ cũng có kết quả tốt đẹp, nên bạn hãy vững tin vì điều này nhé.', 'Bạn là người tốt, luôn giúp đỡ người khác, tuy nhiên bạn cũng dễ gặp phải những người “nuôi ong tay áo”. Nhưng cũng đừng vì thế mà thay đổi, vì người tốt bao giờ cũng gặp được những điều tốt đẹp'),
(6, 'Sáu Bích', 'http://192.168.1.131/android/image/saub.png', 'Cuộc sống của bạn có thành công hay không thường do bạn quyết định. Sự thành công của bạn chỉ có thể thành hiện thực nếu bản thân phải trải qua những thử thách của cuộc sống, mà điều này thường hay làm nản chí những người không tin vào bản thân mình.', 'Bạn là người không tin tưởng vào bản thân, khiến bạn luôn phải trải qua gian nan để có được thành công khiến bạn lại nản chí vào cuộc sống.'),
(7, 'Bảy Bích', 'http://192.168.1.131/android/image/bayb.png', 'Lá bài này cho thấy bạn gặp nhiều khó khăn về sự nghiệp, tiền bạc, nhiều lúc vả trong tình yêu nữa. Đừng lo lắng quá nếu bạn biết cách chia nhỏ những khó khăn đó, giải quyết chúng từng bước, từng bước một.', 'Chỉ sự trái ý, sự không hài lòng, bất mãn, xung đột, rầy rà, cãi vả, gây gỗ, nhiều sự việc xấu xảy ra ngoài dự tính.\r\n– Nếu đi cùng với lá bài 7 Rô, có sự cãi cọ, tranh chấp đưa đến ấu đả, hoặc bị cấp trên rầy la, khiển trách nặng nề.\r\n– Nếu đi với lá bài Ách Bích ngược, bị pháp luật đe dọa, bị tù tội.'),
(8, 'Tám Bích', 'http://192.168.1.131/android/image/tamb.png', 'Bạn có khả năng nhìn nhận vấn đề khá tốt. Tầm nhìn bao quát, không hạn hẹp nên nếu quyết tâm thực hiện một điều gì đó, thường thì thành công luôn đến với bạn.', 'Chỉ sự hư hỏng, thiệt hại, thiệt thòi, thua lỗ, thất bại, bệnh tật, sự lỡ lầm, hoặc bị tiểu nhân chơi xấu, bị tiểu nhân mưu hại.\r\n– Nếu đi cùng với lá bài 8 Cơ và 8 Rô, mưu sự bất thành.\r\n– Nếu đi cùng với các lá bài Bích có thể đưa đến bị tiểu nhân chơi xấu, bị ám hại, bị ám toán, bị bệnh nan y.'),
(9, 'Chín Bích', 'http://192.168.1.131/android/image/chinb.png', 'Luôn biết mình cần gì, muốn gì nên bạn khá trực diện, không thích hùa theo đám đông cũng như a dua theo mọi người. Bạn biết con đường mình sẽ đi là gì và muốn tới đâu. Cuộc sống của bạn sẽ như bạn mong muốn.', 'Chỉ sự quyết định, khẳng định cho một vấn đề, còn chỉ sự tuyệt giao, có sự chia li hoặc bỏ ra đi, kết thúc, chấm dứt.\r\n– Đi với lá bài Ách Bích ngược, chết chóc, có tang, có tin tức chết người, hoặc làm ăn bị thua lỗ nặng nề, tiêu tan sự nghiệp.'),
(10, 'Mười Bích', 'http://192.168.1.131/android/image/muoib.png', 'Điều này cho thấy bạn nên đề phòng những tình huống xấu ngoài ý muốn. Cũng đừng nản chí hay suy sụp tinh thần vì khoảng cách đến với thành công của bạn chỉ được ngăn cách bởi những khó khăn này mà thôi.', 'Chỉ sự việc bị trì trệ chậm chạp, buồn phiền, sự chờ đợi lâu ngày mà vẫn chưa thấy kết quả, sự đau buồn dai dẳng kéo dài.\r\n– Nếu đi cùng với nhiều lá Bích khác, làm gia tăng sự xấu.\r\n– Nếu đi cùng với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn, làm giảm sự tốt đẹp của các lá bài này.'),
(11, 'J Bích', 'http://192.168.1.131/android/image/jb.png', 'Con người trượng nghĩa, luôn làm điều tốt cho mọi người. Bạn có lý tưởng sống, có niềm đam mê và sở thích rõ ràng.', 'Chỉ sự trắc trở, tai nạn, thời vận lụn bại, có sự nguy hiểm bên mình, có tiểu nhân đang rình rập, theo dõi ám hại.\r\n– Ngoài ra, lá bài này còn tượng trưng cho người đàn ông hay gặp nhiều chuyện không may đến với mình, cuộc đời hay gặp bất trắc, trở ngại, buồn nhiều hơn vui, chỉ thích hợp với những người làm về từ thiện, thầy thuốc, y dược, tình báo, mật vụ. xem boi bai tay'),
(12, 'Q Bích', 'http://192.168.1.131/android/image/qb.png', 'Sự ích kỷ thường đem lại cho bạn những món lời nhất thời, nhưng về lâu về dài, nó là nguyên nhân gây cho bạn những phiền toái và sự cô đơn không mong muốn.', 'Boibai chỉ sự trở ngại, tai nạn, thời vận xấu, tượng trưng cho người đàn bà hay gặp nhiều chuyện không may đến với mình, cuộc đời thường gặp bất trắc, trở ngại, buồn nhiều hơn vui, hay sầu muộn. Chỉ thích hợp với người làm nghề bác sĩ, nha sĩ, luật sư, thầy tu.\r\n– Nếu đi với nhiều lá Bích, làm gia tăng sự xấu, đi cùng các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn, làm giảm sự tốt.'),
(13, 'K Bích', 'http://192.168.1.131/android/image/kb.png', 'Chủ về tiền tài, danh vọng và địa vị. Nếu bạn dùng những thủ đoạn xấu để đạt được điều này thì sẽ không bền vững. Nếu bạn sử dụng năng lực của bản thân và sự trợ giúp đúng đắn từ người khác, cuộc sống hạnh phúc và bền lâu sẽ theo bạn.', 'Chỉ thời vận xấu, sự trở ngại, tai nạn, có sự nguy hiểm về pháp luật đang rình rập, tượng trưng cho người đàn ông hay gặp nhiều chuyện không may đến với mình, cuộc đời hay gặp bất trắc, trở ngại, buồn nhiều hơn vui. Chỉ thích hợp với người làm nghề thầy thuốc, thầy tu, luật sư, tòa án, thẩm phán.\r\n– Nếu đi với nhiều lá Bích, làm gia tăng sự xấu, đi cùng các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn, làm giảm sự tốt.'),
(14, 'Át Tép', 'http://192.168.1.131/android/image/att.png', 'Chỉ cần bạn luôn cố gắng trong công việc, thành công sẽ đến với bạn. Sự cầu tiến là nguyên nhân bạn có được nhiều người giúp đỡ khi cần thiết.', 'Chỉ về tiền bạc, có nhiều tiền, nhưng không phải là tiền của mình mà là tiền của người khác hoặc là tiền vay mượn.\r\n– Ngoài ra, lá bài này còn có nghĩa là sự tương quan về nhân quả nợ nần với nhau, sự vay vay trả trả rất lớn lao.'),
(15, 'Hai Tép', 'http://192.168.1.131/android/image/hait.png', 'Mức độ thành đạt của bạn phụ thuộc nhiều và khả năng tập trung và chuyên tâm trong một lĩnh vực nghề nghiệp nào đó. Có câu: \"một nghề chuyên còn hơn 9 nghề\" đúng với trường hợp của bạn.', 'Bạn sẽ thành đạt nếu chỉ chuyên tâm vào 1 công việc, đừng tham lam với quá nhiều công việc'),
(16, 'Ba Tép', 'http://192.168.1.131/android/image/bat.png', 'Khả năng phản ứng nhanh với các tình huống bất ngờ của bạn không thực sự tốt. Tuy nhiên đừng vì thế mà mất bình tĩnh hoặc lo lắng. Chỉ cần ổn định tâm lý và từng bước giải quyết thì mọi khó khăn bạn đều vượt qua.', 'Tâm lý bạn không được tốt, bạn thường bị bất ngờ đối với các tình hướng khó. Nên bình tĩnh giải quyết, chớ hoàng mang'),
(17, 'Bốn Tép', 'http://192.168.1.131/android/image/bont.png', 'Khả năng tập trung của bạn không thực sự tốt, cần phải kiên trì rèn luyện để tránh khỏi những thất bại không đáng có vì điều này.', 'Bạn là người lơ đãng, hãy cố gắng thay đổi nó để tránh khỏi những xui xẻo trong cuộc sống.'),
(18, 'Năm Tép', 'http://192.168.1.131/android/image/namt.png', 'Cuộc sống của bạn khá nhiều thuận lợi khiến cho bạn có suy nghĩ chủ quan, điều này thường dẫn đến những biến cố lớn mà bạn không lường trước được.\r\n\r\n', 'Bạn chủ quan với những gì mình đang có, bạn sẽ dễ gặp phải những chuyện không may mà không lường trước được'),
(19, 'Sáu Tép', 'http://192.168.1.131/android/image/saut.png', 'Bạn luôn luôn có ý thức hoàn thành những công việc được giao và tự giác làm những điều cần thiết. Trong môi trường làm việc đây là một điều cực kỳ tốt nên tương lai bạn sáng lạng và nhiều cơ hội thành công trong sự nghiệp.', 'Bạn là người có tinh thần tự giác tốt, có trách nhiệm trong công việc. Điều này sẽ giúp bạn có nhiều cơ hội thành công trong công việc'),
(20, 'Bảy Tép', 'http://192.168.1.131/android/image/bayt.png', 'Cơ hội thường hay đến với bạn nhiều lần những do tâm lý bạn thường không nhận ra hoặc không năm lấy do không tự tin vào bản thân mình xứng đáng có được điều đó.', 'Có lợi lộc nhỏ, món tiền nhỏ, hoặc có nợ nần, tiền công nợ, tiền vay mượn, sự liên quan với nhau, có quan hệ qua lại với nhau, sự tương quan về nhân quả với nhau, nếu chưa có con mà cầu về con cái thì có con, nếu đang mang thai thì sẽ sinh con trai.'),
(21, 'Tám Tép', 'http://192.168.1.131/android/image/tamt.png', 'Về phương diện tình cảm của bạn tốt đẹp hơn so với phương diện tiền bạc. Chỉ cần bạn chăm chỉ làm việc và biết chi tiêu khoa học, cuộc sống của bạn sẽ thật hoàn mỹ.', 'Chỉ về sự thuận lợi, có cơ hội tốt, tình cảm tốt, ngoài ra còn tượng trưng cho người đàn bà tính tình đoan chính, hiền lành, phúc hậu, thiên về tinh thần, tình cảm, hơn là vật chất tiền bạc, thích hợp với giới sinh viên, công chức hành chính, giáo chức.'),
(22, 'Chín Tép', 'http://192.168.1.131/android/image/chint.png', 'Con đường học tập của bạn đa phần thuận lợi hơn so với nhiều người khác. Bạn là con người có nhiều ý tưởng và sáng kiến nên chỉ cần năng nổ hành động thực hiện hóa những ý tưởng đó thì sự nghiệp của bạn khá rực rỡ. Tuy nhiên bạn nên biết khoa trương với ai, từ tốn với ai để tránh những mâu thuẫn, đố kỵ không cần thiết.', 'Có lộc bất ngờ, tiền phát tài bất ngờ, tiền được trợ cấp, bảo trợ, tiền được người giúp đỡ, hoặc có tiền do trúng số, trúng thưởng, hoặc các việc phát sinh bất ngờ ngoài dự tính. xem boi bai tay\r\n– Nếu đi với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn thì có sự thuận lợi về tiền bạc, kiếm tiền dễ dàng hoặc trúng số.'),
(23, 'Mười Tép', 'http://192.168.1.131/android/image/muoit.png', 'Đây là lá bài tượng trưng cho sự may mắn nên bạn làm những công việc tốt đẹp cho bản thân cũng như mọi người thì đều diễn ra thuận lợi.', 'Có tiền, tiền vốn, tiền lương căn bản, vốn liếng thực sự của mình, tiền kiếm được do chính bàn tay khối óc của mình tạo ra, nói chung lá bài này chủ sự thoải mái về tiền bạc, không sợ bị cảnh túng thiếu, vay mượn, nợ nần vây hãm.'),
(24, 'J Tép', 'http://192.168.1.131/android/image/jt.png', 'Bạn là con người có ý chí phấn đấu cao, đã quyết tâm làm việc nào đó thì sẽ làm cho bằng được. Ngoài ra khả năng thu hút người khác giới của bạn khá là tốt so với những gì bạn nghĩ.', 'Boibai Chỉ sự thuận lợi về tiền bạc, có tiền, còn tượng trưng cho người đàn ông sớm biết kiếm tiền, tự tay làm ra tiền, thích hợp với việc kinh doanh, thương mại. Tuy nhiên, sự thuận lợi tốt đẹp này chỉ là nhỏ, sự nghiệp nhỏ, các công việc bình thường, không nên đầu tư làm ăn lớn lao, không có lợi.'),
(25, 'Q Tép', 'http://192.168.1.131/android/image/qt.png', 'Tính cách ôn hòa của bạn đem lại cho cuộc sống sau này thật hạnh phúc và được nhiều người yêu mến. Khéo léo đối nhân xử thế giúp cho bạn có được những sự trợ giúp cần thiết trên đường đời.', 'Chỉ sự thịnh vượng về tiền bạc, có tiền, tượng trưng cho người đàn bà biết tạo ra tiền của, thích hợp cho việc mua bán, kinh doanh, hoặc làm các nghề có liên quan đến tiền bạc, quý kim, người nặng về thực tế, thực dụng hơn là tình cảm, tinh thần. Xem bói bài Tây'),
(26, 'K Tép', 'http://192.168.1.131/android/image/kt.png', 'Lá bài này cho thấy công việc của bạn thường \"xuôi chèo mát mái\", tương xứng với năng lực và tài năng của bạn. Bạn cũng có số đào hoa nên hãy chắc chắn rằng mình không làm tổn thương đến người mà mình thực sự yêu họ nhé.', 'Chỉ sự thịnh vượng về tiền bạc, giàu có, sung túc về của cải vật chất, tượng trưng cho người đàn ông thành đạt, có sự nghiệp lớn lao, đây là mẫu người có uy quyền, giàu có lớn.\r\n– Nếu đi với lá bài Cơ, lá bài Rô, hoặc các lá bài Chuồn, có sự thuận lợi về tiền bạc, kiếm tiền dễ dàng hoặc làm ăn phát đạt.'),
(27, 'Át Rô', 'http://192.168.1.131/android/image/ar.png', 'Bạn luôn biết cách nắm vững và làm chủ cuộc đời của bạn. Sống và theo đuổi những ước mơ của bản thân, bạn sẽ có địa vị và tiền bạc tương xứng. Bạn có chấp nhận những thử thách đường đời không?', 'Nếu đi với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn thì có nhiều tin tức thuận lợi, tin vui tốt đẹp.\r\n– Nếu đi với các lá bài Bích xấu, thì nhận được nhiều tin tức xấu, tin đồn nhảm, tin buồn, hoặc tiểu nhân tung tin xấu làm ảnh hưởng đến thanh danh, uy tín của mình.'),
(28, 'Hai Rô', 'http://192.168.1.131/android/image/hair.png', 'Bạn đang có những trắc trở trong tình yêu. Tình cảm hiện tại của bạn rất dễ bị tiền bạc làm ảnh hưởng.', 'Tình yêu của bạn hiện không được suôn sẻ, có thể những vấn đè về tài chính sẽ gây ảnh hưởng đến mối quan hệ này của ban'),
(29, 'Ba Rô', 'http://192.168.1.131/android/image/bar.png', 'Nếu ý chí phấn đấu cao sẽ đánh gục những điều phiền toái trong cuộc sống của bạn.', 'Nếu bạn nỗ lực, bạn có thể đứng dậy hiên ngang mỗi lần vất ngã mà không hề lo sợ'),
(30, 'Bốn Rô', 'http://192.168.1.131/android/image/bonr.png', 'Công việc của bạn đang gặp thuận lợi. Nếu cuộc sống hằng ngày của bạn có trở ngại, điều đó dễ ảnh hưởng xấu tới công việc hiện tại của bạn.', 'Công việc của bạn hiện tại đang rất tốt. Hãy cố gắng để những trở ngại trong cuộc sống riêng không làm ảnh hưởng đến công việc của bạn'),
(31, 'Năm Rô', 'http://192.168.1.131/android/image/namr.png', 'Cuộc sống bình thản, thuận lợi và yên ổn cũng có thể mang tới những phiền toái cho bạn. Đối với bản thân, đừng thỏa mãn và lười biếng, đối với người ngoài, chớ nghe lời ngon ngọt mù quáng.', ' Bạn đang quá thỏa mãn với cuộc sống hiện tại. Nó sẽ là 1 cuộc sống tẻ nhạt, buồn chán và mang lại cho bạn nhiều phiền toái. Hãy thử thay đổi và làm mới cuộc sống của mình. Và hãy nhớ, đừng bao giờ tin tưởng vào những lời nói ngon ngọt của người khác'),
(32, 'Sáu Rô', 'http://192.168.1.131/android/image/saur.png', 'Cuộc sống thanh thản bởi bạn không có nhiều áp lực về tiền bạc. Tham vọng quá cao sẽ gây tổn hại cho tương lai của bạn.', 'Bạn không phải chịu bất kì 1 áp lực nào trong cuộc sống, thậm chí cả về tiền bạc. Tuy nhiên, hãy thỏa mãn với những gì mình đang có, đừng cố gắng tham lam mà dễ gây tổn thương cho bản thân'),
(33, 'Bảy Rô', 'http://192.168.1.131/android/image/bayr.png', 'Bạn sẽ thành công trong sự nghiệp và nhận được nhiều sự giúp đỡ của quý nhân. Chớ kiêu căng nếu có địa vị và quên ơn với những người giúp đỡ mình.', 'Chỉ về đường đi, sự di chuyển, lưu động, cuộc đi ngắn ngủi, sự tính toán nhanh nhẹn, nóng nảy, thích hợp cho việc đầu tư ngắn hạn, các công việc có sự dứt điểm nhanh chóng.\r\n– Nếu đi cùng với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn thì làm gia tăng thêm sự tốt đẹp.'),
(34, 'Tám Rô', 'http://192.168.1.131/android/image/tamr.png', 'Tài lộc đang rất gần nơi bạn. Biết nắm bắt cơ hội, hoa sẽ kết trái và ra quả ngọt.', 'xem bói bài Tây – Chỉ về đường đi, sự di chuyển, lưu động, sự tính toán nhanh nhẹn, sự thay đổi không ngừng, thích hợp cho việc đầu tư ngắn hạn, các công việc có sự dứt điểm nhanh chóng.\r\n– Nếu đi cùng với các lá bài 8 Cơ và 8 Chuồn, mưu sự thành đạt, nếu đi với lá bài 8 Cơ và 8 Bích, mưu sự bất thành.'),
(35, 'Chín Rô', 'http://192.168.1.131/android/image/chinr.png', 'Bạn đang khá phóng khoáng nên vấn đề chi tiêu thường quá lố. Nên biết phân biệt những thứ vật chất mình cần và mình muốn để tránh hao tổn tiền của.', 'Chỉ về đường đi, sự tính toán công việc, sự thay đổi về công danh, thay đổi nơi ăn chốn ở, di chuyển, đi xa, xe cộ, du lịch, đi nước ngoài, có tin tức ở xa. Ngoài ra, còn có nghĩa láng giềng, hàng xóm thân cận, khu vực nơi cư trú, cộng đồng, đồng hương.'),
(36, 'Mười Rô', 'http://192.168.1.131/android/image/muoir.png', 'Bạn coi tiền bạc là vật ngoài thân nên rất nhàn nhã, thư thái, không vội vàng. Tuy nhiên, nếu coi thường nó quá bạn sẽ bỏ rơi sự nghiệp của mình bởi bạn không có nhiều động lực phấn đấu trong công việc.', 'Chỉ sự đi xa, thay đổi chỗ ở, đi du lịch, vui vẻ, đám tiệc, sự sum họp đoàn tụ người thân sau nhiều ngày xa cách, thích hợp với các nghề có liên quan đến giải trí, vui chơi, đông đảo.\r\n– Đi với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn, nếu đang trong thời vận xấu, khổ sở, sẽ có cuộc đổi đời tốt đẹp.'),
(37, 'J Rô', 'http://192.168.1.131/android/image/jr.png', 'Sự nhanh nhạy giúp bạn dễ dàng kiếm được đồng tiền, nhưng đi kèm nó là sự thiếu cẩn thận nên ảnh hưởng nhiều tới uy tín của bản thân. Về lâu về dài hãy khắc phục nhược điểm này.', 'Chỉ về sự đi lại, di chuyển nhiều, lưu động, tượng trưng cho người đàn ông vui tính, thích vui chơi đây đó, ham vui, nếu cần có thể sẵn sàng bỏ ngang công việc, bỏ học hành để vui chơi.\r\n– Thích hợp với nghề du lịch, đưa thư, các công việc đòi hỏi có sự đi lại nhiều, có sự thay đổi, biến động không ngừng.'),
(38, 'Q Rô', 'http://192.168.1.131/android/image/qr.png', 'Khi vui vẻ bạn rất dễ gặp những phiền muộn bởi những suy nghĩ màu hồng và tâm hồn thì bâng quơ như đang ở trên mây.', 'Chỉ về sự đi lại, lưu động, sự suy tính nhanh nhẹn, nóng nảy, tượng trưng cho người đàn bà trực tính, ăn ngay nói thẳng, nặng về thực tế, vật chất, hơn là vấn đề tinh thần, tình cảm.\r\n– Nếu đi với các lá bài Cơ, các lá bài Rô, hoặc các lá bài Chuồn thì làm gia tăng độ số tốt đẹp của các lá bài này thêm lên.'),
(39, 'K Rô', 'http://192.168.1.131/android/image/kr.png', 'Lá bài này chỉ ra rằng cuộc sống bạn đang có nhiều thăng trầm, thành công có, thất bại có. Luôn luôn tiến lên phía trước sẽ giúp ích cho bạn rất nhiều trong tương lai.', 'Chỉ về sự di chuyển, lưu động, thay đổi, trực giác nhạy bén, còn có nghĩa là kết quả của công việc tuy chậm nhưng thành công.\r\n– Ngoài ra, lá bài này còn tượng trưng cho người đàn ông tính tình cứng rắn, lạnh lùng, nghiêm khắc, có đời sống mẫu mực nguyên tắc, thích hợp với các nghề quân sự, cảnh sát, thanh tra.'),
(40, 'Át Cơ', 'http://192.168.1.131/android/image/atc.png', 'Cuộc sống sẽ thuận lợi với bạn nếu là người cần cù, chăm chỉ.', 'Chỉ sự thuận lợi tốt đẹp đến nhanh, mưu cầu mọi việc đều được như ý. Ngoài ra, còn tượng trưng cho phúc đức của tổ tiên giòng họ để lại mà mình được hưởng, có hiệu lực hóa giải được tai nạn, hóa giải mọi điều xấu một cách bất ngờ ngoài dự tính, hoặc chặn đứng mọi điều xấu không cho xảy ra hại đến mình.'),
(41, 'Hai Cơ', 'http://192.168.1.131/android/image/haic.png', 'Lá bài chỉ sự may mắn đang đến bên bạn. Hãy chờ những điều bất ngờ đem lại nhé.', 'Chỉ sự thuận lợi tốt đẹp đến nhanh, mưu cầu mọi việc đều được như ý. Ngoài ra, còn tượng trưng cho phúc đức của tổ tiên giòng họ để lại mà mình được hưởng, có hiệu lực hóa giải được tai nạn, hóa giải mọi điều xấu một cách bất ngờ ngoài dự tính, hoặc chặn đứng mọi điều xấu không cho xảy ra hại đến mình.'),
(42, 'Ba Cơ', 'http://192.168.1.131/android/image/bac.png', 'Nỗ lực không ngừng bạn sẽ đạt được nhiều ước vọng. Bạn thấy mình tự tin và hiểu rõ năng lực của bản thân.', 'Đừng chùn bước trước gian khổ, bạn sẽ đạt được những điều mong muốn nếu như nỗ lực và cố gắng đến cùng'),
(43, 'Bốn Cơ', 'http://192.168.1.131/android/image/bonc.png', 'Bạn có nhiều cơ hội trong những mối quan hệ bên ngoài xã hội. Tuy nhiên cần lưu ý đừng nên xen vào những chuyện không phải là của bạn.', ' Hiện tại mối quan hệ bên ngoài của bạn đang rất tốt, bạn sẽ có thêm nhiều mối quan hệ nữa, tuy nhiên không nên để tâm hay tham gia vào những vấn đề không phải của mình'),
(44, 'Năm Cơ', 'http://192.168.1.131/android/image/namc.png', 'Các mối quan hệ bạn bè, tình yêu của bạn đều đang thuận lợi. Bản thân nên nỗ lực nhiều hơn là cố gắng dựa dẫm vào người khác.', 'Tất cả các mối quan hệ của bạn đều đang tốt đẹp, tuy nhiên, bạn cũng cần tìm cách để không dựa dẫm vào người khác, tự lập luôn tốt nhất'),
(45, 'Sáu Cơ', 'http://192.168.1.131/android/image/sauc.png', 'Sự thật thà, chất phát của bạn khiến mọi người luôn luôn giúp đỡ khi bạn gặp khó khăn.', 'Bạn là một người tốt, mọi người sẽ luôn sẵn sàng giúp đỡ bạn nếu bạn gặp bất kì vấn đề gì'),
(46, 'Bảy Cơ', 'http://192.168.1.131/android/image/bayc.png', 'Những bất ngờ và may mắn sẽ ập tới bạn. Điều này không có nghĩa là những thứ bạn đang mong muốn tự nhiên biến thành hiện thực.', 'Sẽ có những may mắn bất ngờ dành cho bạn, tuy nhiên đó không phải là tất cả, có thể là những điều không phải là bạn mong muốn, tuy nhiên, có may mắn là đã là 1 niềm vui rồi'),
(47, 'Tám Cơ', 'http://192.168.1.131/android/image/tamc.png', 'Lá bài này cho thấy, nếu trước kia bạn có nhiều khó khăn thì giờ đây bạn đang đứng trước ngưỡng cửa của sự chuyển biến tốt hơn. Hãy tích cực hơn nữa trong suy nghĩ và hành động.', 'Bạn đã bắt đầu vững vàng hơn trong mọi hoàn cảnh, mọi khó khăn đã sắp hết và sắp tới là những thành công.'),
(48, 'Chín Cơ', 'http://192.168.1.131/android/image/chinc.png', 'Sự tin tưởng thái quá khiến bạn mất đề phòng và dễ bị tổn thương.', 'Bạn chỉ nên tin tưởng vào bản thân, nếu như quá lắng nghe và tin tưởng người khác, bạn sẽ mất đi sự đề phòng với họ và chính họ có thể sẽ khiến bạn bị tổn thương'),
(49, 'Mười Cơ', 'http://192.168.1.131/android/image/muoic.png', 'Trong công việc bạn hay bị tình cảm chi phối nên thường tự ép mình làm những điều mà bản thân không muốn. Tuy nhiên, cuộc sống của bạn khá vui vẻ và hạnh phúc.', 'Bạn là người dễ bị tình cảm chi phối, điều này không hề tốt trong công việc, sẽ gây cho bạn nhiều phiền toái và rắc rối. Tuy nhiên, dù công việc không được thuận lợi nhưng cuộc sống của bạn lại khá vui vẻ'),
(50, 'J Cơ', 'http://192.168.1.131/android/image/jc.png', 'Lựa chọn cuộc sống đơn giản làm cho tinh thần bạn phấn chấn và hoạt bát, tìm thấy nhiều niềm vui mới.', 'Hãy chọn cho mình 1 cuộc sống vui vẻ, nhẹ nhàng, đơn giản hơn để tìm kiếm thêm nhiều niềm vui'),
(51, 'Q Cơ', 'http://192.168.1.131/android/image/qc.png', 'Một lá bài khá đẹp! Bạn có được những sự giúp đỡ cần thiết trong nhiều hoàn cảnh nhất định để xây dựng cho mình một tương lai tốt đẹp.', ' Bạn sẽ gặp được những quý nhân, những người sẽ giúp bạn rất nhiều trong mọi khó khăn và khiến bạn có 1 tương lai tốt đẹp'),
(52, 'K Cơ', 'http://192.168.1.131/android/image/kc.png', 'Sự hấp dẫn của bản thân mang lại cho bạn nhiều cơ hội trong tình cảm và công việc đến bất ngờ.', 'Bạn có 1 sức thu hút khiến đó là 1 vũ khí giúp bạn gặp nhiều điều mau mắn trong công việc và cuộc sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `card1` int(3) NOT NULL,
  `card2` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `log`
--

INSERT INTO `log` (`id`, `user`, `date`, `type`, `card1`, `card2`) VALUES
(12, 39, '2018-04-08 02:34:04', 'Daily', 5, 36),
(16, 40, '2018-04-08 02:41:51', 'Thời Vận', 17, 49),
(17, 39, '2018-04-08 06:27:52', 'Daily', 5, 14),
(18, 39, '2018-04-08 06:27:59', 'Daily', 29, 48),
(19, 42, '2018-04-08 13:11:36', 'Daily', 11, 49);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `iduser` int(3) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(39, 'phong2', '123456'),
(40, 'phong3', '123456'),
(41, 'phong4', '123456'),
(42, 'phong5', '123'),
(43, 'ppp', 'ppp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `dsfsdf` (`card1`),
  ADD KEY `dsfsdfgg` (`card2`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `dsfsdf` FOREIGN KEY (`card1`) REFERENCES `card` (`id`),
  ADD CONSTRAINT `dsfsdfgg` FOREIGN KEY (`card2`) REFERENCES `card` (`id`),
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
