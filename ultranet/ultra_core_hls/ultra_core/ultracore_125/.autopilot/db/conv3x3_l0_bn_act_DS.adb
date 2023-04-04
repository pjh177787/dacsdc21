<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>conv3x3_l0_bn_act_DS</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>in_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>in.V.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>24</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>out_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out.V.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>reps</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>reps_out</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>8</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>103</id>
              <name>reps_c1_i</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>291</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>2</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>291</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>reps_c1_i_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>124</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>104</id>
              <name>reps_c_i</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>291</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>291</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>reps_c_i_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>125</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>105</id>
              <name>padding_out_V_V</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>298</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>298</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>padding_out.V.V</originalName>
              <rtlName>padding_out_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>72</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>126</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>106</id>
              <name>conv_l0_out_V_V</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>302</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>302</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>conv_l0_out.V.V</originalName>
              <rtlName>conv_l0_out_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>416</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>127</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>116</id>
              <name>_ln291</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>291</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>291</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>conv3padding_l0710_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>129</item>
            <item>130</item>
            <item>131</item>
            <item>132</item>
            <item>133</item>
            <item>134</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>119</id>
              <name>_ln303</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>303</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>303</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>convDSPOpt_l0_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>55</count>
            <item_version>0</item_version>
            <item>136</item>
            <item>137</item>
            <item>138</item>
            <item>139</item>
            <item>140</item>
            <item>146</item>
            <item>147</item>
            <item>148</item>
            <item>149</item>
            <item>150</item>
            <item>151</item>
            <item>152</item>
            <item>153</item>
            <item>154</item>
            <item>155</item>
            <item>156</item>
            <item>157</item>
            <item>158</item>
            <item>159</item>
            <item>160</item>
            <item>161</item>
            <item>162</item>
            <item>163</item>
            <item>164</item>
            <item>165</item>
            <item>166</item>
            <item>167</item>
            <item>168</item>
            <item>169</item>
            <item>170</item>
            <item>171</item>
            <item>172</item>
            <item>173</item>
            <item>174</item>
            <item>175</item>
            <item>176</item>
            <item>177</item>
            <item>178</item>
            <item>179</item>
            <item>180</item>
            <item>181</item>
            <item>182</item>
            <item>183</item>
            <item>184</item>
            <item>185</item>
            <item>186</item>
            <item>187</item>
            <item>188</item>
            <item>189</item>
            <item>190</item>
            <item>191</item>
            <item>192</item>
            <item>193</item>
            <item>394</item>
            <item>395</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>6</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>120</id>
              <name>_ln305</name>
              <fileName>./src/conv2d_l0.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>305</lineNumber>
              <contextFuncName>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv2d_l0.hpp</first>
                        <second>conv3x3_l0_bn_act_DSPopt&amp;lt;160, 320, 3, 8, 16, 4, 8, 26, 15, 32, 3, 3, 3, 16, 8&amp;gt;</second>
                      </first>
                      <second>305</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>streamBnRelu_l0_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>142</item>
            <item>143</item>
            <item>144</item>
            <item>145</item>
            <item>393</item>
            <item>396</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>7</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_12">
          <Value>
            <Obj>
              <type>0</type>
              <id>121</id>
              <name>_ln90</name>
              <fileName>./src/ultranet.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>90</lineNumber>
              <contextFuncName>do_compute2</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>8</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_13">
          <Value>
            <Obj>
              <type>2</type>
              <id>123</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_14">
          <Value>
            <Obj>
              <type>2</type>
              <id>128</id>
              <name>conv3padding_l0710</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:conv3padding_l0710&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_15">
          <Value>
            <Obj>
              <type>2</type>
              <id>135</id>
              <name>convDSPOpt_l0</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:convDSPOpt_l0&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_16">
          <Value>
            <Obj>
              <type>2</type>
              <id>141</id>
              <name>streamBnRelu_l0</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:streamBnRelu_l0&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_17">
          <Obj>
            <type>3</type>
            <id>122</id>
            <name>conv3x3_l0_bn_act_DS</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>8</count>
            <item_version>0</item_version>
            <item>103</item>
            <item>104</item>
            <item>105</item>
            <item>106</item>
            <item>116</item>
            <item>119</item>
            <item>120</item>
            <item>121</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>71</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_18">
          <id>124</id>
          <edge_type>1</edge_type>
          <source_obj>123</source_obj>
          <sink_obj>103</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>125</id>
          <edge_type>1</edge_type>
          <source_obj>123</source_obj>
          <sink_obj>104</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>126</id>
          <edge_type>1</edge_type>
          <source_obj>123</source_obj>
          <sink_obj>105</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>127</id>
          <edge_type>1</edge_type>
          <source_obj>123</source_obj>
          <sink_obj>106</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>129</id>
          <edge_type>1</edge_type>
          <source_obj>128</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>130</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>131</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>132</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>133</id>
          <edge_type>1</edge_type>
          <source_obj>105</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>134</id>
          <edge_type>1</edge_type>
          <source_obj>104</source_obj>
          <sink_obj>116</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>136</id>
          <edge_type>1</edge_type>
          <source_obj>135</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>137</id>
          <edge_type>1</edge_type>
          <source_obj>105</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>138</id>
          <edge_type>1</edge_type>
          <source_obj>106</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>139</id>
          <edge_type>1</edge_type>
          <source_obj>104</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>140</id>
          <edge_type>1</edge_type>
          <source_obj>103</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>142</id>
          <edge_type>1</edge_type>
          <source_obj>141</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>143</id>
          <edge_type>1</edge_type>
          <source_obj>106</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>144</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>145</id>
          <edge_type>1</edge_type>
          <source_obj>103</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>146</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>147</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>148</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>149</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>150</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>151</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>152</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>153</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>154</id>
          <edge_type>1</edge_type>
          <source_obj>22</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_46">
          <id>155</id>
          <edge_type>1</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_47">
          <id>156</id>
          <edge_type>1</edge_type>
          <source_obj>26</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_48">
          <id>157</id>
          <edge_type>1</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_49">
          <id>158</id>
          <edge_type>1</edge_type>
          <source_obj>30</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_50">
          <id>159</id>
          <edge_type>1</edge_type>
          <source_obj>32</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_51">
          <id>160</id>
          <edge_type>1</edge_type>
          <source_obj>34</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_52">
          <id>161</id>
          <edge_type>1</edge_type>
          <source_obj>36</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_53">
          <id>162</id>
          <edge_type>1</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_54">
          <id>163</id>
          <edge_type>1</edge_type>
          <source_obj>40</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_55">
          <id>164</id>
          <edge_type>1</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_56">
          <id>165</id>
          <edge_type>1</edge_type>
          <source_obj>44</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_57">
          <id>166</id>
          <edge_type>1</edge_type>
          <source_obj>46</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_58">
          <id>167</id>
          <edge_type>1</edge_type>
          <source_obj>48</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_59">
          <id>168</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_60">
          <id>169</id>
          <edge_type>1</edge_type>
          <source_obj>52</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_61">
          <id>170</id>
          <edge_type>1</edge_type>
          <source_obj>54</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_62">
          <id>171</id>
          <edge_type>1</edge_type>
          <source_obj>56</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_63">
          <id>172</id>
          <edge_type>1</edge_type>
          <source_obj>58</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_64">
          <id>173</id>
          <edge_type>1</edge_type>
          <source_obj>60</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_65">
          <id>174</id>
          <edge_type>1</edge_type>
          <source_obj>62</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_66">
          <id>175</id>
          <edge_type>1</edge_type>
          <source_obj>64</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_67">
          <id>176</id>
          <edge_type>1</edge_type>
          <source_obj>66</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_68">
          <id>177</id>
          <edge_type>1</edge_type>
          <source_obj>68</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_69">
          <id>178</id>
          <edge_type>1</edge_type>
          <source_obj>70</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_70">
          <id>179</id>
          <edge_type>1</edge_type>
          <source_obj>72</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_71">
          <id>180</id>
          <edge_type>1</edge_type>
          <source_obj>74</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_72">
          <id>181</id>
          <edge_type>1</edge_type>
          <source_obj>76</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_73">
          <id>182</id>
          <edge_type>1</edge_type>
          <source_obj>78</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_74">
          <id>183</id>
          <edge_type>1</edge_type>
          <source_obj>80</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_75">
          <id>184</id>
          <edge_type>1</edge_type>
          <source_obj>82</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_76">
          <id>185</id>
          <edge_type>1</edge_type>
          <source_obj>84</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_77">
          <id>186</id>
          <edge_type>1</edge_type>
          <source_obj>86</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_78">
          <id>187</id>
          <edge_type>1</edge_type>
          <source_obj>88</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_79">
          <id>188</id>
          <edge_type>1</edge_type>
          <source_obj>90</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_80">
          <id>189</id>
          <edge_type>1</edge_type>
          <source_obj>92</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_81">
          <id>190</id>
          <edge_type>1</edge_type>
          <source_obj>94</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_82">
          <id>191</id>
          <edge_type>1</edge_type>
          <source_obj>96</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_83">
          <id>192</id>
          <edge_type>1</edge_type>
          <source_obj>98</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_84">
          <id>193</id>
          <edge_type>1</edge_type>
          <source_obj>100</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_85">
          <id>393</id>
          <edge_type>4</edge_type>
          <source_obj>119</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_86">
          <id>394</id>
          <edge_type>4</edge_type>
          <source_obj>116</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_87">
          <id>395</id>
          <edge_type>4</edge_type>
          <source_obj>116</source_obj>
          <sink_obj>119</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_88">
          <id>396</id>
          <edge_type>4</edge_type>
          <source_obj>119</source_obj>
          <sink_obj>120</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_89">
        <mId>1</mId>
        <mTag>conv3x3_l0_bn_act_DS</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>122</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>-1</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_90">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_91">
              <type>0</type>
              <name>conv3padding_l0710_U0</name>
              <ssdmobj_id>116</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>5</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_92">
                  <port class_id="29" tracking_level="1" version="0" object_id="_93">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_94">
                    <type>0</type>
                    <name>conv3padding_l0710_U0</name>
                    <ssdmobj_id>116</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_95">
                  <port class_id_reference="29" object_id="_96">
                    <name>reps_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_94"/>
                </item>
                <item class_id_reference="28" object_id="_97">
                  <port class_id_reference="29" object_id="_98">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_94"/>
                </item>
                <item class_id_reference="28" object_id="_99">
                  <port class_id_reference="29" object_id="_100">
                    <name>padding_out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_94"/>
                </item>
                <item class_id_reference="28" object_id="_101">
                  <port class_id_reference="29" object_id="_102">
                    <name>reps_c_i</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_94"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_103">
              <type>0</type>
              <name>convDSPOpt_l0_U0</name>
              <ssdmobj_id>119</ssdmobj_id>
              <pins>
                <count>52</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_104">
                  <port class_id_reference="29" object_id="_105">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_106">
                    <type>0</type>
                    <name>convDSPOpt_l0_U0</name>
                    <ssdmobj_id>119</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_107">
                  <port class_id_reference="29" object_id="_108">
                    <name>out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_109">
                  <port class_id_reference="29" object_id="_110">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_111">
                  <port class_id_reference="29" object_id="_112">
                    <name>reps_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_113">
                  <port class_id_reference="29" object_id="_114">
                    <name>conv_0_w_new_V_0_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_115">
                  <port class_id_reference="29" object_id="_116">
                    <name>conv_0_w_new_V_0_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_117">
                  <port class_id_reference="29" object_id="_118">
                    <name>conv_0_w_new_V_0_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_119">
                  <port class_id_reference="29" object_id="_120">
                    <name>conv_0_w_new_V_1_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_121">
                  <port class_id_reference="29" object_id="_122">
                    <name>conv_0_w_new_V_1_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_123">
                  <port class_id_reference="29" object_id="_124">
                    <name>conv_0_w_new_V_1_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_125">
                  <port class_id_reference="29" object_id="_126">
                    <name>conv_0_w_new_V_2_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_127">
                  <port class_id_reference="29" object_id="_128">
                    <name>conv_0_w_new_V_2_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_129">
                  <port class_id_reference="29" object_id="_130">
                    <name>conv_0_w_new_V_2_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_131">
                  <port class_id_reference="29" object_id="_132">
                    <name>conv_0_w_new_V_3_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_133">
                  <port class_id_reference="29" object_id="_134">
                    <name>conv_0_w_new_V_3_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_135">
                  <port class_id_reference="29" object_id="_136">
                    <name>conv_0_w_new_V_3_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_137">
                  <port class_id_reference="29" object_id="_138">
                    <name>conv_0_w_new_V_4_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_139">
                  <port class_id_reference="29" object_id="_140">
                    <name>conv_0_w_new_V_4_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_141">
                  <port class_id_reference="29" object_id="_142">
                    <name>conv_0_w_new_V_4_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_143">
                  <port class_id_reference="29" object_id="_144">
                    <name>conv_0_w_new_V_5_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_145">
                  <port class_id_reference="29" object_id="_146">
                    <name>conv_0_w_new_V_5_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_147">
                  <port class_id_reference="29" object_id="_148">
                    <name>conv_0_w_new_V_5_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_149">
                  <port class_id_reference="29" object_id="_150">
                    <name>conv_0_w_new_V_6_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_151">
                  <port class_id_reference="29" object_id="_152">
                    <name>conv_0_w_new_V_6_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_153">
                  <port class_id_reference="29" object_id="_154">
                    <name>conv_0_w_new_V_6_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_155">
                  <port class_id_reference="29" object_id="_156">
                    <name>conv_0_w_new_V_7_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_157">
                  <port class_id_reference="29" object_id="_158">
                    <name>conv_0_w_new_V_7_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_159">
                  <port class_id_reference="29" object_id="_160">
                    <name>conv_0_w_new_V_7_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_161">
                  <port class_id_reference="29" object_id="_162">
                    <name>conv_0_w_new_V_8_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_163">
                  <port class_id_reference="29" object_id="_164">
                    <name>conv_0_w_new_V_8_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_165">
                  <port class_id_reference="29" object_id="_166">
                    <name>conv_0_w_new_V_8_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_167">
                  <port class_id_reference="29" object_id="_168">
                    <name>conv_0_w_new_V_9_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_169">
                  <port class_id_reference="29" object_id="_170">
                    <name>conv_0_w_new_V_9_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_171">
                  <port class_id_reference="29" object_id="_172">
                    <name>conv_0_w_new_V_9_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_173">
                  <port class_id_reference="29" object_id="_174">
                    <name>conv_0_w_new_V_10_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_175">
                  <port class_id_reference="29" object_id="_176">
                    <name>conv_0_w_new_V_10_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_177">
                  <port class_id_reference="29" object_id="_178">
                    <name>conv_0_w_new_V_10_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_179">
                  <port class_id_reference="29" object_id="_180">
                    <name>conv_0_w_new_V_11_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_181">
                  <port class_id_reference="29" object_id="_182">
                    <name>conv_0_w_new_V_11_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_183">
                  <port class_id_reference="29" object_id="_184">
                    <name>conv_0_w_new_V_11_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_185">
                  <port class_id_reference="29" object_id="_186">
                    <name>conv_0_w_new_V_12_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_187">
                  <port class_id_reference="29" object_id="_188">
                    <name>conv_0_w_new_V_12_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_189">
                  <port class_id_reference="29" object_id="_190">
                    <name>conv_0_w_new_V_12_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_191">
                  <port class_id_reference="29" object_id="_192">
                    <name>conv_0_w_new_V_13_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_193">
                  <port class_id_reference="29" object_id="_194">
                    <name>conv_0_w_new_V_13_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_195">
                  <port class_id_reference="29" object_id="_196">
                    <name>conv_0_w_new_V_13_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_197">
                  <port class_id_reference="29" object_id="_198">
                    <name>conv_0_w_new_V_14_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_199">
                  <port class_id_reference="29" object_id="_200">
                    <name>conv_0_w_new_V_14_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_201">
                  <port class_id_reference="29" object_id="_202">
                    <name>conv_0_w_new_V_14_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_203">
                  <port class_id_reference="29" object_id="_204">
                    <name>conv_0_w_new_V_15_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_205">
                  <port class_id_reference="29" object_id="_206">
                    <name>conv_0_w_new_V_15_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
                <item class_id_reference="28" object_id="_207">
                  <port class_id_reference="29" object_id="_208">
                    <name>conv_0_w_new_V_15_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_106"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_209">
              <type>0</type>
              <name>streamBnRelu_l0_U0</name>
              <ssdmobj_id>120</ssdmobj_id>
              <pins>
                <count>3</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_210">
                  <port class_id_reference="29" object_id="_211">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_212">
                    <type>0</type>
                    <name>streamBnRelu_l0_U0</name>
                    <ssdmobj_id>120</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_213">
                  <port class_id_reference="29" object_id="_214">
                    <name>out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_212"/>
                </item>
                <item class_id_reference="28" object_id="_215">
                  <port class_id_reference="29" object_id="_216">
                    <name>rep</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_212"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_217">
              <type>1</type>
              <name>padding_out_V_V</name>
              <ssdmobj_id>105</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>72</bitwidth>
              <source class_id_reference="28" object_id="_218">
                <port class_id_reference="29" object_id="_219">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_94"/>
              </source>
              <sink class_id_reference="28" object_id="_220">
                <port class_id_reference="29" object_id="_221">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_106"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_222">
              <type>1</type>
              <name>reps_c_i</name>
              <ssdmobj_id>104</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_223">
                <port class_id_reference="29" object_id="_224">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_94"/>
              </source>
              <sink class_id_reference="28" object_id="_225">
                <port class_id_reference="29" object_id="_226">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_106"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_227">
              <type>1</type>
              <name>conv_l0_out_V_V</name>
              <ssdmobj_id>106</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>416</bitwidth>
              <source class_id_reference="28" object_id="_228">
                <port class_id_reference="29" object_id="_229">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_106"/>
              </source>
              <sink class_id_reference="28" object_id="_230">
                <port class_id_reference="29" object_id="_231">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_212"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_232">
              <type>1</type>
              <name>reps_c1_i</name>
              <ssdmobj_id>103</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_233">
                <port class_id_reference="29" object_id="_234">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_106"/>
              </source>
              <sink class_id_reference="28" object_id="_235">
                <port class_id_reference="29" object_id="_236">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_212"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_237">
      <states class_id="35" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_238">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>5</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_239">
              <id>103</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_240">
              <id>104</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_241">
              <id>105</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_242">
              <id>106</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_243">
              <id>116</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_244">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_245">
              <id>116</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_246">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_247">
              <id>119</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_248">
          <id>4</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_249">
              <id>119</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_250">
          <id>5</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_251">
              <id>120</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_252">
          <id>6</id>
          <operations>
            <count>15</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_253">
              <id>101</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_254">
              <id>102</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_255">
              <id>107</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_256">
              <id>108</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_257">
              <id>109</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_258">
              <id>110</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_259">
              <id>111</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_260">
              <id>112</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_261">
              <id>113</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_262">
              <id>114</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_263">
              <id>115</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_264">
              <id>117</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_265">
              <id>118</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_266">
              <id>120</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_267">
              <id>121</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_268">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_269">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_270">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_271">
          <inState>4</inState>
          <outState>5</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_272">
          <inState>5</inState>
          <outState>6</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_273">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>conv3padding_l0710_U0 (conv3padding_l0710)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>4</second>
            </item>
            <item>
              <first>FF</first>
              <second>420</second>
            </item>
            <item>
              <first>LUT</first>
              <second>990</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>convDSPOpt_l0_U0 (convDSPOpt_l0)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>72</second>
            </item>
            <item>
              <first>FF</first>
              <second>10734</second>
            </item>
            <item>
              <first>LUT</first>
              <second>7706</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_convDSPbhl_U (start_for_convDSPbhl)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_streamBbil_U (start_for_streamBbil)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>streamBnRelu_l0_U0 (streamBnRelu_l0)</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>DSP48E</first>
              <second>8</second>
            </item>
            <item>
              <first>FF</first>
              <second>1084</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1420</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_continue ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_done ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>conv_l0_out_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>416</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>832</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>24</second>
            </item>
            <item>
              <first>FF</first>
              <second>426</second>
            </item>
            <item>
              <first>LUT</first>
              <second>465</second>
            </item>
          </second>
        </item>
        <item>
          <first>padding_out_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>72</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>144</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>84</second>
            </item>
          </second>
        </item>
        <item>
          <first>reps_c1_i_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
        <item>
          <first>reps_c_i_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>real_start</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>start_once_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>conv3padding_l0710_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>convDSPOpt_l0_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_convDSPbhl_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_streamBbil_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>streamBnRelu_l0_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>conv3padding_l0710_U0 (conv3padding_l0710)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>116</item>
          </second>
        </item>
        <item>
          <first>convDSPOpt_l0_U0 (convDSPOpt_l0)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>119</item>
          </second>
        </item>
        <item>
          <first>streamBnRelu_l0_U0 (streamBnRelu_l0)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>120</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>conv_l0_out_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>124</item>
          </second>
        </item>
        <item>
          <first>padding_out_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>102</item>
          </second>
        </item>
        <item>
          <first>reps_c1_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>134</item>
          </second>
        </item>
        <item>
          <first>reps_c_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>113</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>8</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>103</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>104</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>105</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>106</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>116</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>119</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>120</first>
        <second>
          <first>4</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>121</first>
        <second>
          <first>5</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>122</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>5</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_274">
        <region_name>conv3x3_l0_bn_act_DS</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>122</item>
        </basic_blocks>
        <nodes>
          <count>21</count>
          <item_version>0</item_version>
          <item>101</item>
          <item>102</item>
          <item>103</item>
          <item>104</item>
          <item>105</item>
          <item>106</item>
          <item>107</item>
          <item>108</item>
          <item>109</item>
          <item>110</item>
          <item>111</item>
          <item>112</item>
          <item>113</item>
          <item>114</item>
          <item>115</item>
          <item>116</item>
          <item>117</item>
          <item>118</item>
          <item>119</item>
          <item>120</item>
          <item>121</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>7</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>144</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>103</item>
        </second>
      </item>
      <item>
        <first>148</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>104</item>
        </second>
      </item>
      <item>
        <first>152</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>105</item>
        </second>
      </item>
      <item>
        <first>156</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>106</item>
        </second>
      </item>
      <item>
        <first>160</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>119</item>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>264</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>120</item>
          <item>120</item>
        </second>
      </item>
      <item>
        <first>272</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>116</item>
          <item>116</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>conv_l0_out_V_V_fu_156</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>106</item>
        </second>
      </item>
      <item>
        <first>padding_out_V_V_fu_152</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>105</item>
        </second>
      </item>
      <item>
        <first>reps_c1_i_fu_144</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>103</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_fu_148</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>104</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>grp_conv3padding_l0710_fu_272</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>116</item>
          <item>116</item>
        </second>
      </item>
      <item>
        <first>grp_convDSPOpt_l0_fu_160</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>119</item>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>grp_streamBnRelu_l0_fu_264</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>120</item>
          <item>120</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>48</count>
      <item_version>0</item_version>
      <item class_id="65" tracking_level="0" version="0">
        <first class_id="66" tracking_level="0" version="0">
          <first>conv_0_w_new_V_0_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_0_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_0_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_10_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_10_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_10_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_11_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_11_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_11_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_12_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_12_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_12_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_13_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_13_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_13_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_14_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_14_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_14_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_15_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_15_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_15_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_1_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_1_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_1_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_2_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_2_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_2_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_3_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_3_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_3_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_4_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_4_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_4_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_5_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_5_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_5_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_6_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_6_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_6_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_7_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_7_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_7_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_8_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_8_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_8_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_9_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_9_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_0_w_new_V_9_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>119</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>284</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>103</item>
        </second>
      </item>
      <item>
        <first>290</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>104</item>
        </second>
      </item>
      <item>
        <first>296</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>105</item>
        </second>
      </item>
      <item>
        <first>302</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>106</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>conv_l0_out_V_V_reg_302</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>106</item>
        </second>
      </item>
      <item>
        <first>padding_out_V_V_reg_296</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>105</item>
        </second>
      </item>
      <item>
        <first>reps_c1_i_reg_284</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>103</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_reg_290</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>104</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="67" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>in_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>116</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>120</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>reps</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>116</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>reps_out</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>116</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="69" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="70" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>3</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>4</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>103</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>104</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>105</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>106</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
