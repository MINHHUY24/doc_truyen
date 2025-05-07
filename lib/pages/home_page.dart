import 'package:doc_truyen/models/comic_model.dart';
import 'package:doc_truyen/widgets/custom_comic_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Comic> data = [
    Comic(
      id: 1,
      title: "Spider-Man",
      author: "Stan Lee",
      description:
          "The Amazing Spider-Man, a superhero comic about Peter Parker.",
      imageUrl:
          "https://m.media-amazon.com/images/I/81v8KufIL4L._AC_UF1000,1000_QL80_.jpg",
      content: """
Peter Parker, một học sinh trung học bình thường, sống cùng với bác Ben và dì May ở New York. Một ngày nọ, khi đang tham gia một buổi thực nghiệm khoa học, Peter bị cắn bởi một con nhện bị phóng xạ, từ đó anh phát triển những khả năng đặc biệt, như sức mạnh vượt trội, khả năng bám dính trên tường, và giác quan nhạy bén như nhện.

Ban đầu, Peter sử dụng những sức mạnh này để kiếm tiền và nổi tiếng, nhưng sau khi bác Ben của anh bị sát hại trong một vụ cướp mà Peter có thể ngăn cản, anh nhận ra rằng sức mạnh mà anh có được không phải để phục vụ bản thân mà phải chịu trách nhiệm bảo vệ những người khác.

Với tư tưởng đó, Peter quyết định trở thành Spider-Man, và từ đó anh đối mặt với rất nhiều kẻ thù nguy hiểm như Green Goblin, Doctor Octopus, và Venom. Spider-Man luôn phải vật lộn giữa cuộc sống là một học sinh bình thường với vai trò siêu anh hùng, đồng thời anh cũng không thể bảo vệ được tất cả mọi người mà không phải trả giá cho những mất mát trong cuộc sống cá nhân.

Một trong những thử thách lớn nhất đối với Peter là mối quan hệ với những người thân yêu. Anh yêu Mary Jane Watson, nhưng những nguy hiểm mà Spider-Man mang lại luôn khiến cô lo lắng. Những cuộc chiến với các kẻ thù cũng gây ra mối đe dọa cho gia đình và bạn bè của Peter, khiến anh luôn phải đưa ra những quyết định khó khăn về cách cân bằng giữa vai trò anh hùng và cuộc sống cá nhân của mình.

Mặc dù gặp phải nhiều thử thách, Peter Parker không bao giờ từ bỏ trách nhiệm của mình. Anh không chỉ chiến đấu vì bản thân mà còn vì những người xung quanh. Spider-Man trở thành một trong những biểu tượng của lòng dũng cảm và sự kiên cường, không ngừng chiến đấu vì công lý, bất chấp những nỗi đau mà anh phải chịu đựng.

Trong suốt hành trình của mình, Spider-Man không chỉ phải đối mặt với các kẻ thù mà còn phải đối diện với những sự kiện lớn trong cuộc đời như cái chết của bác Ben, cuộc đấu tranh với Venom, và sự hy sinh trong cuộc chiến với các tổ chức tội phạm. Mỗi trận chiến không chỉ thử thách sức mạnh của anh mà còn kiểm tra lòng kiên trì và đức tin vào những giá trị mà anh bảo vệ.

Cuối cùng, Peter Parker hiểu rằng việc trở thành Spider-Man không chỉ là về việc chiến thắng các trận đấu, mà còn là về việc giữ vững niềm tin vào công lý và bảo vệ những gì quan trọng trong cuộc sống, dù có phải trả giá đắt đến đâu.
""",
    ),

    Comic(
      id: 2,
      title: "Batman",
      author: "Bob Kane",
      description: "Batman, the Dark Knight, protecting Gotham City.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ir6I8kvZkqTCIy8-YJ7Zso1OAX5PVICnmw&s",
      content: """
Bruce Wayne là một cậu bé được sinh ra trong một gia đình giàu có ở Gotham City. Khi mới còn nhỏ, Bruce chứng kiến cái chết bi thảm của cha mẹ mình trong một vụ cướp. Hình ảnh cha mẹ bị giết đã ám ảnh anh suốt cả cuộc đời. Điều này đã thôi thúc Bruce quyết tâm không để bất kỳ ai phải trải qua sự mất mát này. Bruce Wayne đã huấn luyện mình để trở thành một chiến binh, học hỏi những kỹ năng và kiến thức từ khắp nơi trên thế giới. Anh sử dụng sự giàu có của mình để phát triển công nghệ và vũ khí.

Sau nhiều năm huấn luyện, Bruce trở về Gotham với một sứ mệnh: tiêu diệt tội phạm và bảo vệ thành phố khỏi sự thống trị của những kẻ xấu. Tuy nhiên, Batman không phải là một anh hùng bình thường. Anh không có siêu năng lực, chỉ có ý chí sắt đá và kỹ năng chiến đấu tuyệt vời. Với sự trợ giúp của Alfred - người quản lý trung thành và viên cảnh sát Jim Gordon, Batman bắt đầu chiến đấu chống lại những kẻ thù tàn ác trong thành phố.

Một trong những kẻ thù đầu tiên và nguy hiểm nhất của Batman là Joker, một tên tội phạm điên loạn và không có lý trí. Joker là hình mẫu đối lập hoàn toàn với Batman, với một lý tưởng phản diện và một sự tàn nhẫn không thể lường trước. Sự đối đầu giữa Batman và Joker không chỉ là trận chiến giữa hai cá nhân, mà còn là cuộc đấu tranh giữa hai triết lý sống.

Bên cạnh đó, Batman còn phải đối mặt với các kẻ thù khác như Catwoman, Two-Face, và Penguin. Mỗi kẻ thù mang một câu chuyện và lý do riêng, nhưng chúng đều đặt ra những thử thách lớn cho Batman, không chỉ về mặt thể chất mà còn về mặt tâm lý. Batman phải tìm cách giải quyết những vấn đề phức tạp trong cuộc sống, khi mà đôi khi anh không thể luôn đưa ra những quyết định đúng đắn.

Dù vậy, Bruce Wayne luôn kiên trì trong công cuộc bảo vệ Gotham, dù anh phải trả giá bằng những hy sinh cá nhân. Những quyết định khó khăn như phải che giấu danh tính của mình và đối mặt với sự cô đơn là những thử thách lớn mà Batman phải vượt qua. Tuy nhiên, anh không từ bỏ nhiệm vụ của mình, vì anh biết rằng Gotham cần Batman.

Batman cũng phải đối mặt với những câu hỏi về đạo đức, khi anh bắt đầu cảm thấy hoài nghi về sự hiệu quả của việc hành động một mình. Sự xung đột trong chính bản thân Bruce Wayne, giữa những gì là đúng và sai, tiếp tục là một phần quan trọng trong hành trình của anh. Batman không chỉ là một chiến binh, mà còn là biểu tượng của sự kiên cường, lòng dũng cảm và cam kết với công lý.
""",
    ),

    Comic(
      id: 3,
      title: "Superman",
      author: "Jerry Siegel, Joe Shuster",
      description:
          "The Man of Steel, defending Earth from threats beyond its borders.",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/3/32/Superman_%282025_film%29_poster.jpg",
      content: """
Clark Kent, một chàng trai đến từ hành tinh Krypton, được cha mẹ nuôi Jonathan và Martha Kent nhận nuôi khi tàu vũ trụ của anh đổ bộ xuống Trái Đất. Lớn lên tại Smallville, Kansas, Clark phát hiện ra rằng mình có những khả năng đặc biệt: sức mạnh vượt trội, khả năng bay, tầm nhìn x-ray, và nhiều năng lực khác.

Khi trưởng thành, Clark Kent trở thành phóng viên cho tờ Daily Planet tại Metropolis, trong khi che giấu danh tính thật của mình là Superman, một siêu anh hùng bảo vệ Trái Đất. Với sức mạnh và lòng dũng cảm, Superman chiến đấu chống lại các thế lực xấu xa như Lex Luthor, General Zod và Brainiac.

Điều làm nên sự khác biệt của Superman chính là lòng nhân ái và niềm tin vào con người. Anh luôn tìm cách bảo vệ thế giới, ngay cả khi phải đối diện với những kẻ thù vượt trội về mặt sức mạnh. Nhưng những thách thức mà Superman phải đối mặt không chỉ là kẻ thù vật lý. Anh còn phải đấu tranh với những giới hạn của chính mình, đối mặt với cái giá phải trả cho việc bảo vệ thế giới mà không thể giữ được cuộc sống cá nhân yên ổn.

Khi trở thành Superman, Clark phải đối mặt với sự cô đơn khi phải giấu đi tình cảm thực sự của mình. Anh yêu Lois Lane, nhưng với trách nhiệm lớn lao, anh không thể mở lòng mình hoàn toàn. Những mối quan hệ của Superman, từ Lois cho đến những đồng đội trong Justice League, luôn bị thử thách bởi sự xung đột giữa nhu cầu cứu thế giới và bảo vệ cuộc sống cá nhân.

Không chỉ đối diện với kẻ thù, Superman còn phải đối diện với những mối lo ngại về quyền lực và trách nhiệm. Trong nhiều lần chiến đấu với những kẻ xấu, Superman tự đặt câu hỏi liệu mình có nên là người quyết định số phận của người khác hay không. Mỗi trận chiến không chỉ là về việc chiến thắng, mà còn là bài học về sự hi sinh, tình người và trách nhiệm.

Superman không chỉ là một siêu anh hùng với sức mạnh siêu phàm, mà là biểu tượng của hy vọng, niềm tin và tình yêu với nhân loại. Những gì mà anh làm không chỉ là cứu người, mà còn là lời nhắc nhở rằng dù có mạnh mẽ đến đâu, mỗi người trong chúng ta đều có trách nhiệm bảo vệ những giá trị nhân văn trong xã hội.
""",
    ),

    Comic(
      id: 4,
      title: "Wonder Woman",
      author: "William Moulton Marston",
      description: "The Amazonian princess, fighting for justice and equality.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMjEzYmZkNjktODBmYi00NzNkLWIzMjItMjhkMWZiZTZlN2MwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      content: """
Diana Prince, công chúa của đảo Themyscira, được sinh ra trong một xã hội phụ nữ Amazon mạnh mẽ. Là con gái của Nữ thần Hy Lạp, Hippolyta, và được ban cho những năng lực siêu phàm, Diana trở thành người bảo vệ cho hòn đảo và đấu tranh cho công lý, tự do và bình đẳng.

Khi thế giới bên ngoài bắt đầu gặp phải những mối đe dọa lớn từ quân đội xâm lược và những kẻ tàn bạo, Diana quyết định rời khỏi đảo Themyscira để giúp đỡ nhân loại. Cô gia nhập cuộc chiến tranh thế giới và đã chứng minh rằng không chỉ có sức mạnh thể chất mà còn có lòng dũng cảm và trí tuệ.

Diana không chỉ là một chiến binh mà còn là một người đứng lên bảo vệ những giá trị đạo đức. Cô đấu tranh không chỉ với kẻ thù mạnh mẽ mà còn với những quan niệm sai lầm về sự bất bình đẳng giới trong xã hội. Với vũ khí mạnh mẽ như Lasso of Truth và chiếc khiên vô địch, Diana không chỉ chiến đấu với các kẻ xấu mà còn phải đấu tranh với những quy chuẩn xã hội, thể hiện sự quan tâm đến việc thay đổi cách nhìn nhận về quyền lực và nữ quyền.

Khi trở thành Wonder Woman, Diana không chỉ đối diện với những kẻ thù mạnh mẽ mà còn phải đứng trước thử thách của sự hy sinh. Cô yêu Steve Trevor, nhưng tình yêu này cũng luôn bị thử thách bởi sự căng thẳng giữa nhiệm vụ bảo vệ thế giới và cảm xúc cá nhân.

Wonder Woman luôn tin tưởng vào việc đem lại sự bình đẳng cho mọi người, không phân biệt giới tính, chủng tộc hay tầng lớp. Cô không chỉ chiến đấu vì công lý mà còn đại diện cho hy vọng về một thế giới tốt đẹp hơn. Những cuộc đấu tranh của Diana không chỉ là về sức mạnh mà còn là về việc thay đổi xã hội và tìm kiếm sự công bằng cho tất cả mọi người.
""",
    ),

    Comic(
      id: 5,
      title: "Iron Man",
      author: "Stan Lee",
      description: "Iron Man, the genius billionaire in a suit of armor.",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/vi/e/e0/Iron_Man_bleeding_edge.jpg",
      content: """
Tony Stark, một thiên tài công nghệ và tỷ phú nổi tiếng, là người sáng lập Stark Industries. Tuy nhiên, cuộc đời của Tony Stark đã thay đổi mãi mãi khi một sự cố xảy ra trong một chuyến công tác quân sự tại Afghanistan. Sau khi bị bắt giữ và buộc phải chế tạo vũ khí cho kẻ thù, Tony đã chế tạo một bộ giáp sắt để trốn thoát. Cùng với bộ giáp đó, Tony đã khám phá ra rằng công nghệ mà anh đang phát triển có thể gây nguy hiểm cho thế giới nếu rơi vào tay kẻ xấu.

Tony quyết định thay đổi cuộc đời mình và trở thành Iron Man, sử dụng bộ giáp sắt để bảo vệ thế giới khỏi những kẻ thù nguy hiểm. Mặc dù ban đầu, anh chỉ hành động vì lợi ích cá nhân và bảo vệ công ty của mình, nhưng dần dần Tony nhận ra rằng anh phải sử dụng tài năng của mình để bảo vệ thế giới khỏi những mối đe dọa lớn hơn.

Iron Man không chỉ chiến đấu với các tổ chức tội phạm mà còn phải đối mặt với những kẻ thù trong chính nội bộ của mình. Những mối quan hệ với các đồng nghiệp, đặc biệt là với những người bạn trong Avengers, luôn được thử thách. Tony không chỉ là một chiến binh mà còn là một người học cách đối diện với những quyết định khó khăn liên quan đến việc sử dụng công nghệ và tài sản của mình cho mục đích tốt.

Điều đặc biệt ở Iron Man là sự thay đổi trong thái độ và nhân cách của Tony Stark. Anh không còn là người chỉ nghĩ về lợi ích cá nhân, mà là một người đã cam kết bảo vệ Trái Đất, mặc dù đôi khi phải đối mặt với những sự hy sinh cá nhân lớn lao. Tony Stark thể hiện được sự kiên cường và dũng cảm khi luôn đối diện với nguy hiểm, không phải để tìm kiếm sự công nhận mà là để làm những điều đúng đắn.
""",
    ),

    Comic(
      id: 6,
      title: "The Flash",
      author: "Gardner Fox",
      description:
          "Barry Allen, the fastest man alive, uses his speed to fight crime.",
      imageUrl:
          "https://static1.dienanh.net/upload/202201/61479ee7-46ee-4850-994b-2cc9900f4a30.jpg",
      content: """
Barry Allen, một cảnh sát viên ở thành phố Central City, đã có một cuộc sống bình lặng cho đến khi một tai nạn xảy ra trong phòng thí nghiệm của anh, khiến Barry bị ảnh hưởng bởi sét và hóa thành The Flash - người có khả năng di chuyển với tốc độ vượt qua mọi giới hạn.

Với khả năng siêu tốc độ, Barry không chỉ có thể chạy nhanh mà còn có thể đi ngược thời gian, thay đổi các sự kiện trong quá khứ và tương lai. Tuy nhiên, với sức mạnh này cũng đến những mối nguy hiểm và trách nhiệm nặng nề. Barry phải đối mặt với những kẻ thù như Reverse-Flash, một người có khả năng sử dụng tốc độ ngược lại, và Zoom, một kẻ thù nguy hiểm khác đến từ tương lai.

Điều đặc biệt ở Flash là anh phải liên tục đối mặt với những hậu quả của việc thay đổi thời gian. Những quyết định sai lầm có thể gây ra những tổn thất lớn và làm thay đổi lịch sử. Mặc dù vậy, Flash luôn kiên cường và chiến đấu không chỉ vì bản thân mà còn vì tất cả những người mà anh yêu quý.

Bên cạnh đó, Barry Allen cũng đối mặt với những thách thức trong cuộc sống cá nhân, khi anh phải giữ bí mật về danh tính thật của mình và duy trì một cuộc sống bình thường trong khi chiến đấu với những kẻ thù nguy hiểm. Flash cũng là một thành viên của nhóm Justice League, nơi anh phải hợp tác với những siêu anh hùng khác để đối phó với những mối đe dọa toàn cầu.

Câu chuyện của Barry Allen là một câu chuyện về sự hy sinh, sự hi sinh cá nhân vì lợi ích của mọi người, và cách mà sức mạnh có thể mang lại cả cơ hội lẫn thách thức trong cuộc sống.
""",
    ),

    Comic(
      id: 7,
      title: "Green Lantern",
      author: "John Broome, Gil Kane",
      description:
          "Hal Jordan, chosen to wield the power of the Green Lantern ring to protect the universe.",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/8/80/Green_Lantern_Rebirth_6.jpg",
      content: """
Hal Jordan là một phi công thử nghiệm trong quân đội, sống một cuộc sống khá bình thường cho đến khi anh gặp một Green Lantern từ hành tinh Oa. Anh được lựa chọn để trở thành một Green Lantern, người mang chiếc nhẫn quyền năng có khả năng tạo ra bất cứ hình dạng nào từ ánh sáng xanh, phụ thuộc vào sức mạnh ý chí của người sử dụng.

Với chiếc nhẫn Green Lantern, Hal không chỉ bảo vệ Trái Đất mà còn toàn bộ vũ trụ khỏi những mối đe dọa lớn. Anh trở thành một phần của Lực lượng Green Lantern, một đội ngũ các chiến binh vũ trụ từ nhiều hành tinh khác nhau, mỗi người đều mang một chiếc nhẫn Green Lantern riêng biệt.

Trong suốt hành trình của mình, Hal phải đối mặt với những kẻ thù như Sinestro, một Green Lantern đã bị lôi kéo sang phe đối nghịch và trở thành kẻ thù nguy hiểm của Lực lượng Green Lantern. Dù vậy, Hal không chỉ đối đầu với những kẻ thù bên ngoài mà còn phải chiến đấu với chính những xung đột trong nội tâm, khi anh đấu tranh giữa việc giữ vững lý tưởng và đôi khi phải làm những việc mà anh cho là cần thiết để bảo vệ thế giới.

Hal Jordan cũng phải đối mặt với thử thách lớn khi phải học cách kiểm soát sức mạnh của chiếc nhẫn. Sức mạnh này không phải vô hạn và luôn yêu cầu người sử dụng phải giữ vững ý chí và lòng kiên cường. Chính ý chí là thứ giúp Hal vượt qua những thời điểm khó khăn và đánh bại những kẻ thù mạnh mẽ.

Câu chuyện của Green Lantern là câu chuyện về sự vượt qua nỗi sợ hãi, sự hy sinh và tinh thần bảo vệ công lý. Hal Jordan không chỉ là một chiến binh, mà là một biểu tượng của lòng kiên trì và sức mạnh ý chí.
""",
    ),

    Comic(
      id: 8,
      title: "Thor",
      author: "Stan Lee, Jack Kirby",
      description:
          "Thor, the God of Thunder, defending both Asgard and Earth from threats.",
      imageUrl:
          "https://static.wikia.nocookie.net/endless-fictional-arena/images/1/10/Thor_in_LoveAndThunder_Poster.webp/revision/latest?cb=20231011022241&path-prefix=vi",
      content: """
Thor, con trai của Odin, vua của Asgard, là một vị thần sấm sét trong thần thoại Bắc Âu. Mặc dù là một vị thần mạnh mẽ, Thor đã phải đối mặt với sự thiếu trách nhiệm và tính kiêu ngạo trong những năm đầu đời. Vì vậy, Odin đã quyết định đày Thor xuống Trái Đất để học cách khiêm nhường và trở thành một người xứng đáng với sức mạnh của mình.

Trên Trái Đất, Thor chiến đấu với những kẻ thù nguy hiểm như Loki, người em trai xảo quyệt của anh, và các sinh vật ác quỷ từ các chiều không gian khác. Với cây búa Mjolnir, Thor không chỉ có sức mạnh vượt trội mà còn có khả năng điều khiển sấm sét và mưa. Thor trở thành một người bảo vệ cho cả Asgard và Trái Đất, đối mặt với những mối đe dọa khủng khiếp từ các thế lực xấu.

Bên cạnh đó, Thor cũng phải đối mặt với những thử thách về mối quan hệ với gia đình và bạn bè. Loki luôn tìm cách chống lại Thor và phá hoại các kế hoạch của anh, trong khi Thor phải tìm cách bảo vệ những giá trị mà anh tin tưởng.

Câu chuyện của Thor là một hành trình về sự trưởng thành, sự hy sinh và sự hiểu biết về trách nhiệm. Thor không chỉ chiến đấu vì danh dự của mình mà còn vì những người thân yêu và bảo vệ các thế giới khỏi sự tàn phá.
""",
    ),

    Comic(
      id: 9,
      title: "Sơn Tinh - Thủy Tinh",
      author: "Truyền thuyết dân gian Việt Nam",
      description:
          "Câu chuyện về cuộc chiến giữa Sơn Tinh và Thủy Tinh để giành công chúa Mị Nương.",
      imageUrl:
          "https://lh3.googleusercontent.com/proxy/WfESlQBrd31H1nqhM2UXLyrzQEjgiJZ2vjDRvfdB0C9KM8bI4ANM5CxSjpE6MU4aRvtJUIjJY83jcU79u8E8zFCY3jiR2b4GPJMeEtTqhghvLkLBaDH27B3D9LGLYZlTj6YEjGt-uyvKk_NMzANYZBtvKpn4",
      content: """
Sơn Tinh và Thủy Tinh là hai nhân vật trong truyền thuyết Việt Nam, biểu tượng của thiên nhiên và các thế lực tự nhiên. Sơn Tinh là thần núi, đại diện cho sức mạnh của đất đai, còn Thủy Tinh là thần nước, biểu tượng của biển cả và sông hồ.

Câu chuyện bắt đầu khi vua Hùng thứ VI muốn tìm chồng cho công chúa Mị Nương, người con gái xinh đẹp và thông minh. Hai vị thần Sơn Tinh và Thủy Tinh đều đến xin cưới công chúa. Vua Hùng quyết định thử thách hai thần bằng cách đưa ra một yêu cầu: ai mang được lễ vật về đến trước sẽ được lấy công chúa.

Sơn Tinh đã sử dụng sức mạnh của núi non, rừng rậm để đem lễ vật về nhanh chóng. Thủy Tinh, với sức mạnh của nước, đã đuổi theo nhưng không thể nào vượt qua được Sơn Tinh. Khi Thủy Tinh thất bại, ông ta đã tức giận, bắt đầu dâng nước lên để tấn công Sơn Tinh. Tuy nhiên, Sơn Tinh đã dùng sức mạnh của núi để ngăn nước lại, và từ đó, mưa bão, lũ lụt luôn xảy ra khi Thủy Tinh tức giận.

Câu chuyện này không chỉ phản ánh sự đối kháng giữa thiên nhiên mà còn là bài học về sự kiên trì, sức mạnh của thiên nhiên, và sự công bằng trong tình yêu.
""",
    ),

    Comic(
      id: 10,
      title: "Tấm Cám",
      author: "Truyền thuyết dân gian Việt Nam",
      description:
          "Câu chuyện về Tấm, một cô gái hiền lành và chịu đựng, và hành trình vượt qua thử thách để chiến thắng ác độc của chị em Cám.",
      imageUrl:
          "https://sonno.vn/wp-content/uploads/2018/01/chuyen-co-tich-tam-cam.jpg",
      content: """
Tấm Cám là một trong những câu chuyện cổ tích nổi tiếng của Việt Nam, kể về cô gái Tấm hiền lành và chị em Cám độc ác. Tấm là con gái của một gia đình nghèo, bị mẹ kế và em gái Cám đối xử tàn nhẫn. Tuy nhiên, Tấm có một trái tim nhân hậu, và trong suốt câu chuyện, cô đã phải trải qua rất nhiều khó khăn, từ việc bị mẹ kế và Cám đánh đập đến việc bị ép phải làm việc nặng nhọc trong gia đình.

Một ngày, Tấm gặp được một hoàng tử và họ yêu nhau. Tuy nhiên, khi Tấm muốn đến lễ hội, mẹ kế và Cám đã lừa cô và khiến cô phải làm những công việc vất vả, không cho cô tham gia. Dù vậy, nhờ sự giúp đỡ của một bà tiên, Tấm vẫn có thể đi dự lễ hội, và cuối cùng, hoàng tử nhận ra cô chính là người con gái mà mình yêu.

Tuy nhiên, Cám và mẹ kế vẫn tìm cách hãm hại Tấm, và cô phải đối mặt với những thử thách vô cùng lớn. Nhưng cuối cùng, với sự thông minh, lòng nhân hậu và sự giúp đỡ của những người tốt, Tấm đã vượt qua mọi khó khăn và nhận được phần thưởng xứng đáng.

Câu chuyện Tấm Cám không chỉ là một câu chuyện tình yêu, mà còn là bài học về sự kiên trì, lòng nhân ái, và sự chiến thắng của cái thiện trước cái ác.
""",
    ),

    Comic(
      id: 11,
      title: "Bánh Chưng - Bánh Dày",
      author: "Truyền thuyết dân gian Việt Nam",
      description:
          "Câu chuyện về sự ra đời của bánh Chưng, bánh Dày trong ngày Tết của người Việt.",
      imageUrl:
          "https://donghaifoodsaigon.com/wp-content/uploads/2025/01/su-tich-banh-chung-banh-giay.png",
      content: """
Câu chuyện về bánh Chưng và bánh Dày là một phần quan trọng trong văn hóa Việt Nam, đặc biệt là trong dịp Tết Nguyên Đán. Theo truyền thuyết, vua Hùng Vương thứ VI muốn tìm người xứng đáng để nối ngôi, và ông quyết định tổ chức một cuộc thi để chọn người thừa kế.

Vua ra lệnh cho các con trai của mình tìm ra một món quà đặc biệt để dâng lên vua. Ai có món quà thể hiện được sự trân trọng và lòng hiếu thảo với tổ tiên sẽ được chọn làm người kế vị.

Các hoàng tử đều mang đến những món quà quý giá, nhưng chỉ có hoàng tử Lang Liêu, một người nghèo khó nhưng rất thông minh, đã mang đến món bánh Chưng và bánh Dày, tượng trưng cho đất và trời. Bánh Chưng có hình vuông, tượng trưng cho đất, và bánh Dày có hình tròn, tượng trưng cho trời. Vua Hùng nhận thấy món quà này có ý nghĩa sâu sắc, và quyết định chọn Lang Liêu làm người kế vị.

Câu chuyện này không chỉ phản ánh lòng biết ơn với tổ tiên mà còn thể hiện sự tôn trọng thiên nhiên và sự gắn bó với đất trời của dân tộc Việt Nam. Bánh Chưng và bánh Dày đã trở thành biểu tượng quan trọng trong văn hóa ẩm thực của người Việt, đặc biệt là trong dịp Tết Nguyên Đán.
""",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            // Mobile: ListView
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: CustomComicCard(comic: data[index]),
                );
              },
            );
          } else if (constraints.maxWidth < 1100) {
            return GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.7,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomComicCard(comic: data[index]),
                );
              },
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 8,
                childAspectRatio: 1.7,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomComicCard(comic: data[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
