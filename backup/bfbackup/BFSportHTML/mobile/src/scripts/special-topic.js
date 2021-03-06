require.config({
    baseUrl: 'src/scss'
});

require([
    'components/libs/fastclick',
    'components/libs/zepto.min',
    'components/abase/util',
    'components/abase/index',
    'components/deviceapi/index',
    'components/listitem/index',
    'components/list/index',
    'components/article/index',
    'components/button/index',
    'components/channel/index',
    'components/sharepage/index',
    'components/page/index'
], function (FastClick) {
    window.pageType = Utils.pageType;

    pageType !== 'app' && SharePageFactory();

    FastClick.attach(document.body);

    ChannelShareFactory();

    var buttons = document.querySelectorAll('.button');
    for (var i = 0, len = buttons.length; i < len; i++) {
        ButtonFactory({element: buttons[i]});
    }

    var list = document.querySelectorAll('.list');
    if (list) {
        for (var i = 0, len = list.length; i < len; i++) {
            ListFactory({element: list[i]});
        }
    }
});
