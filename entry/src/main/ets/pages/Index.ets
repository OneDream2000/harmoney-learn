@Entry // 标记当前组件是入口组件
@Component // 标记自定义组件
struct Index { // 自定义组件： 可复用 的UI单元
  @State message: string = 'Hello World---'
  @State num: number = 0
  build() { // UI 描述：其内部以声明式方法描述UI 结构
    Row() {
      Column() { // 容器组件
        Text(this.message + this.num) // 基础组件
          .fontSize(50) // 属性
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{ // 事件方法
            this.num++
          })
        Image('https://lf-cdn-tos.bytescm.com/obj/static/xitu_extension/static/brand.82c24770.svg').width(250)
        Image($r('app.media.icon')).width(250).interpolation(ImageInterpolation.High)
        Image($rawfile('icon.png')).width(250).interpolation(ImageInterpolation.High)
      }
      .width('100%')
    }
    .height('100%')
  }
}