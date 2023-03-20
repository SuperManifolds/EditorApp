import { New } from "@loopholelabs/scale";
import { Read } from "@loopholelabs/scalefile/scalefunc/helpers";

const sf = Read("./test.scale");

(async () => {
  const r = await New([sf]);
  const i = await r.Instance(null);
  i.Context().Request.Body = "Hello, World!";
  i.Run()
  console.log(i.Context().Response.Body);
})();
