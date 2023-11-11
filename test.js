const s1 = "Leverage switch on CAP it ALL for amg.raspberrypi@gmail.com";
const s2 = "Platform switch from Sterling to DAS";
const s3 = "Platform addition for MetaTrader 5";

function parseRequestDescription(s) {
  // Split the string based on 'on', 'from', or 'for' to get the components
  const components = s.split(
    s.includes("on")
      ? " on "
      : s.includes("from")
      ? " from "
      : s.includes("for")
      ? " for "
      : " for "
  );
  let operationType = components[0].trim();
  let remainder = components[1];
  console.log("Operation Type", operationType);
  // Extract the platform and email
  let platform = null;
  let newPlatform = null;
  let email = null;

  if (
    operationType.includes("Platform switch") ||
    operationType.includes("Platform addition")
  ) {
    if (remainder == null) {
      console.log("Addition");
      const [operationTypePart, platformPart] = operationType.split(" for ");
      operationType = operationTypePart.trim();
      platform = platformPart.trim();
      email = null;
      newPlatform = null;
    } else {
      console.log("Switch");
      const [oldPlatformPart, newPlatformPart] = remainder.split(" to ");
      operationType = operationType.trim();
      platform = oldPlatformPart.trim();
      newPlatform = newPlatformPart.trim();
      email = null;
    }
  } else if (operationType.includes("Leverage")) {
    console.log("Leverage Switch");
    const [platformPart, emailPart] = remainder.split(" for ");
    platform = platformPart.trim();
    email = emailPart.trim();
    newPlatform = null;
    operationType = operationType.trim();
  }
  return [operationType, email, platform, newPlatform];
}

const anser = parseRequestDescription(s3);

console.log("Answer:", anser);
