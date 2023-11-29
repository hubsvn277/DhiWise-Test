import React from "react";
import { TextArea } from "components";

export default {
  title: "hubsvn_s_application2/TextArea",
  component: TextArea,
};

export const SampleTextarea = (args) => <TextArea {...args} />;

SampleTextarea.args = { placeholder: "placeholder" };
