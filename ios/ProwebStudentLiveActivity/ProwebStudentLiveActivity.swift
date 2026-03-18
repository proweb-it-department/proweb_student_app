import ActivityKit
import WidgetKit
import SwiftUI

struct LiveActivitiesAppAttributes: ActivityAttributes, Identifiable {
    public typealias LiveDeliveryData = ContentState

    public struct ContentState: Codable, Hashable { }

    var id = UUID()
}

extension LiveActivitiesAppAttributes {
    func prefixedKey(_ key: String) -> String {
        "\(id)_\(key)"
    }
}

private let sharedDefaults = UserDefaults(suiteName: "group.com.proweb.mystudent")!

struct ProwebStudentLiveActivityWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { context in
            let title = sharedDefaults.string(forKey: context.attributes.prefixedKey("title")) ?? "Загрузка"
            let progress = sharedDefaults.integer(forKey: context.attributes.prefixedKey("progress"))

            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.headline)
                    .lineLimit(1)

                ProgressView(value: Double(progress), total: 100)

                Text("\(progress)%")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding()
        } dynamicIsland: { context in
            let title = sharedDefaults.string(forKey: context.attributes.prefixedKey("title")) ?? "Загрузка"
            let progress = sharedDefaults.integer(forKey: context.attributes.prefixedKey("progress"))

            return DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Image(systemName: "arrow.down")
                }
                DynamicIslandExpandedRegion(.center) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(title).lineLimit(1)
                        ProgressView(value: Double(progress), total: 100)
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("\(progress)%")
                        .font(.caption2)
                }
            } compactLeading: {
                Image(systemName: "arrow.down")
            } compactTrailing: {
                Text("\(progress)%")
                    .font(.caption2)
            } minimal: {
                Text("\(progress)%")
                    .font(.caption2)
            }
        }
    }
}