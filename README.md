# Flutter 拖拽（Draggable）

## 简介

页面里放一个 **`Draggable<String>`**：按住蓝色块拖动时显示 `feedback`（带拖拽图标），`data` 携带字符串 `'Drag me'`。本示例**未**放置 `DragTarget`，因此松手后没有接盘逻辑，仅演示拖动过程中的视觉反馈。

## 快速开始

### 环境要求

Flutter SDK。

### 运行

```bash
flutter pub get
flutter run
```

## 概念讲解

### 第一部分：`feedback` 与 `child`

`child` 是静止时看到的方块，`feedback` 是拖动时跟着手指的那一层，一般用半透明的 `Material` 包一下避免锯齿。

### 第二部分：下一步可接 `DragTarget`

若要「拖到指定区域才接收」，在同一页补上 `DragTarget<T>`，在 `onAccept` 里改状态。本 Demo 刻意保持单 Widget，降低首读成本。

## 完整示例

见 `lib/main.dart`：`Draggable` 三要素 `data`、`feedback`、`child`。

## 注意事项

- 桌面 Web 与触屏事件路径不同，复杂拖放请在目标端测试。
- 列表内拖放排序更常用 `ReorderableListView` 等专用 API。

## 完整讲解（中文）

拖放 API 拆开看只有两件事：**拖起来长什么样**（feedback），**撒手以后谁来接**（DragTarget）。本仓库先写一半，是为了不让首学的人同时记两套回调。你会用 `Draggable` 后，再加上 `DragTarget`，整块拼图就完整了。
