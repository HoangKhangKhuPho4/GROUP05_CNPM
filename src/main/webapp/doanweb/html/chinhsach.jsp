<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chính sách</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/doanweb/styles/style.css">
  <link rel="icon" href="<%= request.getContextPath() %>/doanweb/images/Page1/LoadWeb.png" type="image/png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<%--  <script src="/html/index.js"></script>--%>
  <script
          src="https://kit.fontawesome.com/cc9450bd42.js"
          crossorigin="anonymous"
  ></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

  <!-- bootstarp stackpath cdn -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- Bootstrap icons cdn-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <style>
    .about-section h2 {
      color: #BC1F23;
      margin-top: 40px;
    }
    .about-section p {
      font-size: 18px;
      color: #343a40;
    }
    .about-section img {
      border-radius: 10px;
      margin: 10px;
      margin-top: 35px;
      width: 100%;
      object-fit: contain;
    }
    .container.page-wrapper.page-with-bar {
      padding-top: 120px;
    }


  </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-dark py-4 fixed-top">
  <div class="container-fluid mr-5">
    <!-- <div class="col-1"></div> -->
    <img src="<%= request.getContextPath() %>/doanweb/images/Page1/LogoWeb.png" onclick="location.reload();" id="logo-img" alt="logo..">

    <button class="navbar-toggler" onclick="toggleMenu()">
      <span><i id = "nav-bar-icon" class="bi bi-list"></i></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">

        <li class="nav-item">
          <a class="nav-link " href="<%= request.getContextPath() %>/home">Trang Chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/shop">Cửa Hàng</a>
        </li>
        <!-- <li class="nav-item">
            <a class="nav-link" href="#">Quality</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/about">Thông tin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/contact">Liên hệ</a>

        </li>
        <li class="nav-item" id="nav-icons">
          <!-- <i class="bi bi-search"></i> -->
          <a href="login"><i class="bi bi-person-fill"></i></a>
          <a href="cart"><i class="bi bi-bag-heart-fill"></i></a>
        </li>

      </ul>
    </div>


    <!-- Biểu tượng menu để mở/đóng sidebar
    <i class="bi bi-list menu-icon" onclick="toggleMenu()" id="menu-btn"></i>

    <-- Sidebar menu -->
    <div id="mySideBar" class="sidebar">
      <div class="sidebar-header">
        <img src="<%= request.getContextPath() %>/doanweb/images/Page1/LogoWeb.png" alt="Logo" class="logo">
        <span id="closeBtn" class="close-btn" onclick="toggleMenu()">&times;</span>
      </div>
      <div class="sidebar-content">
        <div class="menu-section">
          <h4><a href="<%= request.getContextPath() %>/home">TRANG CHỦ</a></h4>
        </div>
        <div class="menu-section">
          <h4><a href="<%= request.getContextPath() %>/cart">GIỎ HÀNG</a></h4>
        </div>
        <div class="menu-section">
          <h4><a href="<%= request.getContextPath() %>/about">VỀ MFS</a></h4>

        </div>
        <div class="menu-section">
          <h4><a href="javascript:void(0);" class="toggle-menu">THỰC ĐƠN</a></h4>
          <ul class="submenu">
            <li><a href="#">Combo gà phải thử</a></li>
            <li><a href="<%= request.getContextPath() %>/shop">Các món đùi gà nổi bật</a></li>
            <li><a href="<%= request.getContextPath() %>/shop">Các món cánh gà nổi bật</a></li>
          </ul>
        </div>
        <div class="menu-section">
          <h4><a href="#">DỊCH VỤ</a></h4>
        </div>
        <div class="menu-section">
          <h4><a href="<%= request.getContextPath() %>/contact">LIÊN HỆ</a></h4>
        </div>
        <div class="menu-section">
          <h4><a href="#">TUYỂN DỤNG</a></h4>
        </div>

        <div class="menu-section user">
          <h4><i class="bi bi-person"></i><a href="<%= request.getContextPath() %>/login">ĐĂNG NHẬP</a> / <a href="<%= request.getContextPath() %>/register">ĐĂNG KÝ</a></h4>

        </div>
      </div>
    </div>
</nav>


<!-- About section -->
<section _ngcontent-ng-cli-universal-c140="" class="container page-wrapper page-with-bar "><h1 _ngcontent-ng-cli-universal-c140="">Chính sách và quy định chung</h1>
  <h3 _ngcontent-ng-cli-universal-c140="">1.1 Chấp nhận chính sách và quy định chung khi sử dụng website</h3><p _ngcontent-ng-cli-universal-c140="">Những chính sách và quy định chung này ảnh hưởng đến việc Khách hàng sử dụng website của MarsStore Việt Nam và các tổ chức có liên quan đến website của MarsStore Việt Nam.</p><p _ngcontent-ng-cli-universal-c140="">Khi truy cập hoặc đăng nhập vào website này có nghĩa là khách hàng đã chấp nhận và đồng ý với các chính sách và quy định chung này và những chính sách và quy định của chính sách bảo mật thông tin từ MarsStore Việt Nam.</p><p _ngcontent-ng-cli-universal-c140="">Nếu khách hàng không đồng ý với bất kỳ điều khoản nào dưới đây, vui lòng không truy cập vào website của MarsStore Việt Nam. Chính sách và quy định chung này được xem là hợp đồng giữa Khách hàng và MarsStore Việt Nam và được áp dụng khi Khách hàng sử dụng website của MarsStore Việt Nam. Những chính sách và quy định chung này ảnh hưởng đến quyền lợi của Khách hàng, vui lòng đọc kỹ trước khi sử dụng.
  <h3 _ngcontent-ng-cli-universal-c140="">1.2 Những thay đổi đối với các chính sách và quy định chung này</h3><p _ngcontent-ng-cli-universal-c140="">. Phiên bản cập nhật này sẽ thay thế tất cả các phiên bản cũ. Nếu khách hàng sử dụng website của MarsStore Việt Nam sau khi xuất hiện những thay đổi này có nghĩa là khách hàng đã đồng ý với những thay đổi này. MarStoreChicken có quyền thay đổi các chính sách và quy định chung này bất cứ lúc nào mà không cần thông báo trước với khách hàng. Khách hàng có thể xem phiên bản cập nhật mới nhất của chính sách và quy định chung.
  <h3 _ngcontent-ng-cli-universal-c140="">1.3 Tài khoản sử dụng của Khách hàng</h3><p _ngcontent-ng-cli-universal-c140="">Nếu khách hàng sử dụng website của MarsStore Việt Nam, khách hàng có trách nhiệm duy trì tính bảo mật của tài khoản do khách hàng sử dụng, bảo quản mật mã và hạn chế cho người khác truy cập vào máy tính của khách hàng, và khách hàng đồng ý chịu trách nhiệm cho tất cả mọi hoạt động diễn ra trong tài khoản hoặc mật mã của khách hàng.</p><h3 _ngcontent-ng-cli-universal-c140="">1.4 Website của MarsStore Việt Nam</h3><p _ngcontent-ng-cli-universal-c140="">Những chính sách và quy định chung này áp dụng cho tất cả Khách hàng sử dụng website của MarsStore Việt Nam. Website này có thể chứa những liên kết đến website của bên thứ ba không thuộc sở hữu của KFC Việt Nam. MarsStore Việt Nam không có quyền kiểm soát nội dung, chính sách bảo mật thông tin hoặc những phần khác trong các website của bên thứ ba. Hơn nữa, MarsStore Việt Nam sẽ không thể kiểm duyệt hoặc biên tập lại nội dung trên các website của bên thứ ba. Chúng tôi khuyến khích khách hàng đọc kỹ các điều khoản, điều kiện và chính sách bảo mật thông tin của các website của bên thứ ba mà bạn truy cập.</p><h3 _ngcontent-ng-cli-universal-c140="">1.5 Truy cập vào website</h3><p _ngcontent-ng-cli-universal-c140="">MarsStore Việt Nam chấp thuận cho bạn sử dụng website như đã công bố trong điều khoản sử dụng dịch vụ, bao gồm: (i) sử dụng website cho mục đích cá nhân, không nhằm mục đích thương mại; (ii) không sao chép hoặc cung cấp bất cứ thông tin nào của website này cho bên thứ ba; (iii) Khách hàng không được thay đổi, chỉnh sửa bất cứ phần nào của website này; (iv) Khách hàng phải tuân theo chính sách và quy định chung sử dụng dịch vụ.</p><p _ngcontent-ng-cli-universal-c140="">Để truy cập vào một số tính năng của website, khách hàng phải tạo một tài khoản cho riêng mình. Khách hàng không được phép sử dụng tài khoản của người khác nếu không được sự đồng ý của chủ tài khoản. Khi tạo tài khoản, khách hàng phải cung cấp thông tin đầy đủ và chính xác. Khách hàng tự chịu trách nhiệm cho tất cả các hoạt động xảy ra trong tài khoản của mình, và khách hàng phải giữ mật mã tài khoản an toàn. Khách hàng phải lập tức thông báo cho MarsStore Việt Nam nếu có bất cứ vi phạm nào về độ an toàn hoặc sử dụng tài khoản mà không có sự đồng ý của chủ tài khoản. Mặc dù MarsStore Việt Nam không chịu trách nhiệm pháp lý cho bất cứ những mất mát nào liên quan đến việc sử dụng tài khoản của khách hàng một cách bất hợp pháp, khách hàng phải chịu trách nhiệm cho những mất mát của MarsStore Việt Nam hoặc những mất mát do sử dụng bất hợp pháp.</p><p _ngcontent-ng-cli-universal-c140="">Khách hàng đồng ý không sử dụng bất cứ hệ thống tự động nào, bao gồm nhưng không giới hạn, người máy, gián điệp...để truy cập vào website và gửi nhiều thông tin yêu cầu đến máy chủ của MarsStore Việt Nam nhiều hơn một người bình thường có thể làm được bằng việc sử dụng website thông thường trong một khoản thời gian nhất định. Mặc dù đã được đề cập ở trên, MarsStore Việt Nam chấp thuận cho người điều hành của các công cụ tìm kiếm công cộng được phép sử dụng gián điệp để sao chép thông tin từ website cho mục đích tạo ra những chỉ số tìm kiếm có giá trị công cộng của các thông tin này nhưng không được giữ hoặc lưu trữ những tài liệu này. MarsStore Việt Nam có quyền thu hồi những tài liệu này ngoại trừ những trường hợp đặc biệt. Khách hàng đồng ý không thu thập bất cứ thông tin cá nhân nào từ website, bao gồm tên tài khoản, và cũng không sử dụng những hệ thống truyền thông do website cung cấp cho mục đích thương mại nào. Khách hàng đồng ý không van nài, với mục đích thương mại, bất kỳ người sử dụng nào của website để yêu cầu đăng ký thông tin.</p><h3 _ngcontent-ng-cli-universal-c140="">1.6 Đăng ký thông tin của người sử dụng</h3><p _ngcontent-ng-cli-universal-c140="">Website của MarsStore Việt Nam cho phép đăng ký thông tin cá nhân. Khách hàng nên hiểu rằng những thông tin đăng ký này có được công bố hay không, MarsStore Việt Nam cũng không đảm bảo rằng sẽ bảo mật thông tin cho bất cứ phần đăng ký nào. Khách hàng phải đồng ý với việc MarsStore có thể công bố tên của khách hàng và phần đăng ký thông tin trên website của MarsStore Việt Nam hoặc trong những phần thông cáo báo chí hoặc trong các phương tiện truyền thông khác.</p><p _ngcontent-ng-cli-universal-c140="">Khách hàng sẽ đơn phương chịu trách nhiệm cho phần đăng ký thông tin cá nhân của mình và tầm quan trọng của việc công bố những thông tin này. Để kết nối với phần đăng nhập thông tin, khách hàng xác nhận và cam kết cho: (i) quyền sở hữu hoặc có những giấy phép cần thiết, chấp thuận và cho phép MarsStore Việt Nam sử dụng tất cả các bằng sáng chế, thương hiệu, bản quyền, nhãn hiệu đã đăng ký bản quyền và tất cả các quyền lợi độc quyền khác trong tất cả các phần đăng ký thông tin và (ii) Khách hàng có văn bản chấp thuận, biên nhận, và sự đồng ý của mỗi cá nhân đăng ký thông tin trong phần đăng ký được sử dụng tên hoặc chân dung cá nhân và những phần đăng ký này mặc nhiên trở thành tài sản của MarsStore Việt Nam. MarsStore Việt Nam có thể tự do sử dụng những phần đăng ký thông tin này. Để rõ ràng hơn, khách hàng có thể giữ quyền sở hữu cá nhân trong các phần đăng ký thông tin khác. Tuy nhiên, khi đăng ký thông tin của mình trên website của MarsStore Việt Nam là khách hàng đã đồng ý cho MarsStore Việt Nam sử dụng những thông tin cá nhân này và MarsStore Việt Nam có quyền sử dụng những thông tin này cho mục đích quảng cáo trên website và các kênh truyền thông khác.</p><h3 _ngcontent-ng-cli-universal-c140="">1.7 Miễn trừ trách nhiệm về kỹ thuật</h3><p _ngcontent-ng-cli-universal-c140="">Khách hàng đồng ý rằng khi sử dụng website của MarsStore Việt Nam, khách hàng sẽ tự chấp nhận các rủi ro có thể xảy ra. Các nhân viên văn phòng, ban giám đốc, nhân viên và các đại lý của MarsStore Việt Nam từ chối bảo hành có liên quan đến website và việc sử dụng website của khách hàng. MarsStore Việt Nam không bảo hành tính chính xác hoặc hoàn thiện của nội dung trên website hoặc nội dung của bất kỳ website nào được kết nối với website của MarsStore Việt Nam và chúng tôi không có quyền và nghĩa vụ cho bất cứ (i) những nội dung sai sót và sơ suất hoặc không chính xác, (ii) những tổn thương cá nhân hoặc hư hại tài sản đến từ tự nhiên trong quá trình truy cập và sử dụng website của chúng tôi, (iii) truy cập bất hợp pháp vào các máy chủ của chúng tôi để lấy thông tin cá nhân hoặc/và những thông tin tài chính mà chúng tôi bảo quản trong đó, (iv) cắt ngang hoặc chấm dứt truyền thông tin đến website của chúng tôi, (v) sai sót, vi-rút, hoặc những thứ tương tự như vậy có thể truyền đến thông qua website của chúng tôi bởi bên thứ ba, và (vi) lỗi hoặc sai sót trong phần nội dung hoặc những mất mát hư hỏng do sử dụng nội dung đăng tải, email, đường truyền hoặc những thứ tương tự từ website của MarsStore Việt Nam. MarsStore Việt Nam sẽ không bảo hành và chịu trách nhiệm bất cứ sản phẩm, dịch vụ nào hoặc các chương trình khuyến mãi của bên thứ ba thông qua website của MarsStore Việt Nam và MarsStore Việt Nam cũng không có trách nhiệm giám sát bất cứ giao dịch nào của Khách hàng với bên thứ ba, những người cung cấp sản phẩm và dịch vụ. Việc mua sản phẩm và dịch vụ thông qua trung gian, tốt nhất là khách hàng nên sử dụng khả năng phán xét của mình để quyết định thế nào là hợp lý.</p><h3 _ngcontent-ng-cli-universal-c140="">1.8 Hạn chế về nghĩa vụ pháp lý</h3><p _ngcontent-ng-cli-universal-c140="">Ban giám đốc, nhân viên hoặc các đại lý của MarsStore Việt Nam không chịu bất cứ trách nhiệm pháp lý nào cho khách hàng trong bất kỳ trường hợp nào bao gồm trực tiếp, gián tiếp, ngẫu nhiên, đặc biệt, hư hỏng do cố ý hay bất kỳ vấn đề gì là kết quả của các vấn đề sau bao gồm nhưng không giới hạn: (i) những nội dung sai sót hoặc không chính xác, (ii) những tổn thương cá nhân hoặc hư hại tài sản đến từ tự nhiên trong quá trình truy cập và sử dụng website của chúng tôi, (iii) truy cập bất hợp pháp vào các máy chủ của chúng tôi để lấy thông tin cá nhân hoặc/và những thông tin tài chính mà chúng tôi bảo quản trong đó, (iv) cắt ngang hoặc chấm dứt truyền thông tin đến website của chúng tôi, (v) sai sót, vi-rút, hoặc những thứ tương tự như vậy có thể truyền đến thông qua website của chúng tôi bởi bên thứ ba, và (vi) lỗi hoặc sai sót trong phần nội dung hoặc những mất mát hư hỏng do sử dụng nội dung đăng tải, email, đường truyền hoặc những thứ tương tự từ website của MarsStore Việt Nam, dựa trên bảo hành, hợp đồng, sai lầm dân sự, hoặc bất cứ các lý thuyết pháp lý khác, công ty sẽ không chịu trách nhiệm cho những thiệt hại có thể xảy ra này. Các hạn chế về nghĩa vụ pháp lý như đã nói ở trên sẽ được áp dụng trong phạm vi luật pháp cho phép.</p><p _ngcontent-ng-cli-universal-c140="">Khách hàng nên nhận thức rõ việc KFC Việt Nam sẽ không chịu trách nhiệm cho việc đăng ký thông tin của người sử dụng, hoặc những chỉ dẫn bất hợp pháp của bất kỳ bên thứ ba nào hoặc bất cứ những rủi ro thiệt hại nào khác cho khách hàng.</p><h3 _ngcontent-ng-cli-universal-c140="">1.9 Bồi thường</h3><p _ngcontent-ng-cli-universal-c140="">Khách hàng đồng ý bảo vệ, bồi thường và không gây hại cho MarsStore Việt Nam, công ty mẹ, ban giám đốc, nhân viên chi nhánh và các đại lý dựa trên toàn bộ/bất cứ các yêu sách, thiệt hại, mất mát, nghĩa vụ, chi phí hoặc nợ (bao gồm nhưng không giới hạn phí công chứng) phát sinh do: (i) Khách hàng truy cập &amp; sử dụng website của MarsStore Việt Nam, (ii) Khách hàng vi phạm bất cứ điều khoản nào trong phần điều khoản sử dụng dịch vụ này, (iii) Khách hàng vi phạm quyền lợi của bất kỳ bên thứ ba nào, bao gồm nhưng không giới hạn tác quyền, tài sản, hoặc là quyền cá nhân, (iv) bất cứ các yêu sách nào từ phần đăng ký thông tin cá nhân gây thiệt hại cho bên thứ ba. Trách nhiệm về bồi thường sẽ được áp dụng xuyên suốt trong các điều khoản sử dụng cũng như việc truy cập vào website của MarsStore Việt Nam.</p><h3 _ngcontent-ng-cli-universal-c140="">1.10 Tài sản trí tuệ của MarsStore Việt Nam</h3><p _ngcontent-ng-cli-universal-c140="">Website này chứa nhiều bản quyền thương hiệu có giá trị do MarsStore Việt Nam và các chi nhánh, thành viên trên toàn thế giới sở hữu và sử dụng. Những bản quyền thương hiệu này được sử dụng để phân biệt các chất lượng sản phẩm và dịch vụ của MarsStore Việt Nam. Những bản quyền thương hiệu này và các tài sản có liên quan được bảo vệ để tránh không được tái sản xuất và giả mạo theo luật quốc gia và luật quốc tế và không được sao chép dưới bất kỳ hình thức nào nếu không được sự đồng ý bằng văn bản của MarsStore Việt Nam. Văn bản, hình ảnh minh họa, mã html có trong website này sẽ không được sao chép, phân phối, trưng bày, tái sản xuất và truyền tải dưới bất kỳ hình thức nào hoặc phương tiện nào mà không được sự đồng ý bằng văn bản của MarsStore Việt Nam. Website của MarsStore Việt Nam có thể liên kết đến những trang khác không liên quan đến MarsStore Việt Nam. Các đường kết nối không được cung cấp dưới dạng dịch vụ dành cho Khách hàng và không được tài trợ hoặc liên kết với website của MarsStore Việt Nam. MarsStore Việt Nam sẽ không xem xét các đường kết nối này đến từ website nào và không chịu trách nhiệm cho nội dung của bất cứ website nào khác. Khách hàng tự chịu rủi ro khi truy cập các đường kết nối này. MarsStore Việt Nam sẽ không đại diện hoặc bảo hành cho bất cứ nội dung, tính trọn vẹn, hoặc tính chính xác nào của các đường kết nối này hoặc các website liên kết với website của chúng tôi.</p><p _ngcontent-ng-cli-universal-c140="">MarsStore Việt Nam có quyền điều chỉnh các Điều khoản dịch vụ này bất cứ lúc nào mà không cần thông báo trước, và nhiệm vụ của khách hàng là phải xem lại các điều khoản này nếu có bất kỳ thay đổi nào. Khách hàng sử dụng website của MarsStore Việt Nam với những điều khoản chỉnh sửa có nghĩa là khách hàng đã đồng ý và chấp nhận những điều khoản chỉnh sửa này.</p></section>



<footer class="mt-5 p-5 bg-dark">
  <div class="row conatiner mx-auto pt-5">
    <div class="footer-one col-lg-3 col-md-6 col-12">

      <img id="logo-img-footer" src="<%= request.getContextPath() %>/doanweb/images/Page1/LogoWeb.png" alt="logo">
      <p class="py-3 pl-2 ml-4 mr-5">Tiệm Gà Sao Hỏa là một quán ăn hiện đại với phong cách thiết kế đậm chất không gian. Thực đơn của quán không chỉ có các món gà nổi tiếng, mà còn kèm theo những món ăn độc lạ lấy cảm hứng từ vũ trụ mang lại cảm giác mới mẻ cho thực khách.</p>

    </div>

    <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
      <h5 class="pb-2">Liên kết nhanh</h5>
      <ul class="text-uppercase list-unstyled">
        <li><a href="<%= request.getContextPath() %>/home">trang chủ</a></li>
        <li><a href="<%= request.getContextPath() %>/shop">Cửa hàng</a></li>
        <li><a href="<%= request.getContextPath() %>/about">thông tin</a></li>
        <li><a href="<%= request.getContextPath() %>/contact">liên hệ</a></li>
        <li><a href="<%= request.getContextPath() %>/cart">Giỏ hàng</a></li>
      </ul>
    </div>
    <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
      <h5 class="pb-2">Liên hệ với chúng tôi</h5>
      <div>
        <h6 class="text-uppercase">Địa chỉ</h6>
        <p>Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</p>
      </div>
      <div>
        <h6 class="text-uppercase">điện thoại</h6>
        <p>0849294483</p>
      </div>
      <div>
        <h6 class="text-uppercase">Email</h6>
        <p>MarsStore@gmail.com</p>
      </div>
    </div>
    <div class="Photos col-lg-3 col-md-6 col-12">
      <h5 class="pb-2">Các đơn vị tài trợ</h5>
      <div class="row">
        <img class="footer-img img-fluid mb-2" src="<%= request.getContextPath() %>/doanweb/images/Page1/image copy 3.png" alt="leather-img">
        <img class="footer-img img-fluid mb-2" src="<%= request.getContextPath() %>/doanweb/images/Page1/image copy 2.png" alt="leather-img">
        <img class="footer-img img-fluid mb-2" src="<%= request.getContextPath() %>/doanweb/images/Page1/image copy.png" alt="leather-img">
        <img class="footer-img img-fluid mb-2" src="<%= request.getContextPath() %>/doanweb/images/Page1/image.png" alt="leather-img">
      </div>
    </div>
    <div class="copyright mt-5">
      <div class="row container mx-auto">
        <!-- <div class="col-lg-3 col-md-6 col-12 mb-4">
          <img src="img/payment.png" alt="payment..logo">
        </div> -->

        <div class="col-lg-6 col-md-8 col-12 mb-2 mx-auto">
          <p>ABK WEBSITE &copy; DESIGN 2024</p>
        </div>

        <div class="col-lg-3 col-md-6 col-12">
          <a href="https://www.facebook.com/"><i class="bi bi-facebook"></i></a>
          <a href="https://x.com/home?lang=vi"><i class="fa-brands fa-x-twitter"></i></a>
          <a href="https://www.linkedin.com/feed/"><i class="bi bi-linkedin"></i></a>
          <a href="https://www.instagram.com/"><i class="bi bi-instagram"></i></a>
        </div>
      </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>