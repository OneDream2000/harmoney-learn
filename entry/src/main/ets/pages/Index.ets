@Entry // 标记当前组件是入口组件
@Component // 标记自定义组件
struct Index { // 自定义组件： 可复用 的UI单元
  @State message: string = 'Hello World---'
  @State num: number = 0
  @State imageWidth: number = 100

  build() { // UI 描述：其内部以声明式方法描述UI 结构
    Column() { // 容器组件
      Row() {
        Image($rawfile('icon.png')).width(this.imageWidth).interpolation(ImageInterpolation.High)
      }.height(400)

      Row() {
        Text($r('app.string.test')) // 基础组件
          .fontSize(20) // 属性
          .fontWeight(FontWeight.Bold)

        TextInput({ text: this.imageWidth.toFixed(0) }).type(InputType.Number).onChange((val) => {
          this.imageWidth = parseInt(val)
        }).width(150).backgroundColor('#fff')
      }.padding({ left: 14, right: 14 }).width('100%').justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Button('缩小').width(80).fontSize(20).onClick(() => {
          this.imageWidth -= 10
        })
        Button('放大').width(80).fontSize(20).onClick(() => {
          this.imageWidth += 10
        })
      }.width('100%').justifyContent(FlexAlign.SpaceEvenly).margin(20)

      Slider({
        min: 100,
        max: 300,
        value: this.imageWidth,
        step: 10
      })
        .width('100%')
        .blockColor('#36D')
        .trackThickness(5)
        .showTips(true)
        .onChange(val => {
          this.imageWidth = val
        })
    }
    .width('100%')
  }
}