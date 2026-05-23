import json
from datetime import datetime

report = {
    "generated_at": str(datetime.now()),
    "unused_resources": [
        {
            "resource_type": "EBS Volume",
            "resource_id": "vol-123456",
            "reason": "Unattached for 30 days"
        },
        {
            "resource_type": "Elastic IP",
            "resource_id": "eipalloc-123456",
            "reason": "Not associated with any instance"
        }
    ]
}

with open("unused_resources.json", "w") as f:
    json.dump(report, f, indent=4)

print("Report generated: unused_resources.json")