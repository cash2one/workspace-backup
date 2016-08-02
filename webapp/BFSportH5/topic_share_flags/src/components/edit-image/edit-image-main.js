import * as React from 'react';
import Slider from 'react-slick';

/**
 * 编辑图片区域
 */
export default class EditImageMain extends React.Component {
    static propTypes = {
        bg: React.PropTypes.string.isRequired,
        data: React.PropTypes.array.isRequired

    }

    render() {
        //组件配置
        var settings = {
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            draggable: false
        };

        let list = this.props.data.map(function (item) {
            return <div><img src={item}/></div>;
        });

        //按需求,第一个无图
        list.unshift(<div></div>);

        return (
            <div className='editImageMain'>
                <img className='bgImg' src={this.props.bg}/>
                <canvas id='editCanvas'></canvas>
                <Slider className='maskImage' {...settings}>
                    {list}
                </Slider>
            </div>

        );
    }

}