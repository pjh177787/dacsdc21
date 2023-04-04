<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>conv3x3_bn_act_DSPop_1</name>
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
            <bitwidth>32</bitwidth>
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
            <bitwidth>64</bitwidth>
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
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>87</id>
              <name>reps_c_i</name>
              <fileName>./src/conv2d_DSPopt.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>503</lineNumber>
              <contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</contextFuncName>
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
                        <first>./src/conv2d_DSPopt.hpp</first>
                        <second>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</second>
                      </first>
                      <second>503</second>
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
            <item>101</item>
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
              <id>88</id>
              <name>padding_out_V_V</name>
              <fileName>./src/conv2d_DSPopt.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>512</lineNumber>
              <contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</contextFuncName>
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
                        <first>./src/conv2d_DSPopt.hpp</first>
                        <second>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</second>
                      </first>
                      <second>512</second>
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
            <bitwidth>64</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>102</item>
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
              <id>96</id>
              <name>_ln503</name>
              <fileName>./src/conv2d_DSPopt.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>503</lineNumber>
              <contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</contextFuncName>
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
                        <first>./src/conv2d_DSPopt.hpp</first>
                        <second>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</second>
                      </first>
                      <second>503</second>
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
              <rtlName>conv3padding712_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>104</item>
            <item>105</item>
            <item>106</item>
            <item>107</item>
            <item>108</item>
            <item>109</item>
          </oprand_edges>
          <opcode>call</opcode>
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
              <id>97</id>
              <name>_ln517</name>
              <fileName>./src/conv2d_DSPopt.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>517</lineNumber>
              <contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</contextFuncName>
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
                        <first>./src/conv2d_DSPopt.hpp</first>
                        <second>conv3x3_bn_act_DSPopt&amp;lt;40, 80, 32, 4, 64, 4, 4, 17, 13, 21, 8, 4, 4, 8, 8&amp;gt;</second>
                      </first>
                      <second>517</second>
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
              <rtlName>convDSPOpt_4_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>46</count>
            <item_version>0</item_version>
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
            <item>122</item>
            <item>123</item>
            <item>124</item>
            <item>125</item>
            <item>126</item>
            <item>127</item>
            <item>128</item>
            <item>129</item>
            <item>130</item>
            <item>131</item>
            <item>132</item>
            <item>133</item>
            <item>134</item>
            <item>135</item>
            <item>136</item>
            <item>137</item>
            <item>138</item>
            <item>139</item>
            <item>140</item>
            <item>141</item>
            <item>142</item>
            <item>143</item>
            <item>144</item>
            <item>145</item>
            <item>146</item>
            <item>147</item>
            <item>148</item>
            <item>149</item>
            <item>150</item>
            <item>151</item>
            <item>152</item>
            <item>153</item>
            <item>154</item>
            <item>298</item>
            <item>299</item>
          </oprand_edges>
          <opcode>call</opcode>
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
              <id>98</id>
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
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>100</id>
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
        <item class_id_reference="16" object_id="_11">
          <Value>
            <Obj>
              <type>2</type>
              <id>103</id>
              <name>conv3padding712</name>
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
          <content>&lt;constant:conv3padding712&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_12">
          <Value>
            <Obj>
              <type>2</type>
              <id>110</id>
              <name>convDSPOpt_4</name>
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
          <content>&lt;constant:convDSPOpt.4&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_13">
          <Obj>
            <type>3</type>
            <id>99</id>
            <name>conv3x3_bn_act_DSPop.1</name>
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
            <count>5</count>
            <item_version>0</item_version>
            <item>87</item>
            <item>88</item>
            <item>96</item>
            <item>97</item>
            <item>98</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>54</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_14">
          <id>101</id>
          <edge_type>1</edge_type>
          <source_obj>100</source_obj>
          <sink_obj>87</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>102</id>
          <edge_type>1</edge_type>
          <source_obj>100</source_obj>
          <sink_obj>88</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>104</id>
          <edge_type>1</edge_type>
          <source_obj>103</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>105</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>106</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>107</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>108</id>
          <edge_type>1</edge_type>
          <source_obj>88</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>109</id>
          <edge_type>1</edge_type>
          <source_obj>87</source_obj>
          <sink_obj>96</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>111</id>
          <edge_type>1</edge_type>
          <source_obj>110</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>112</id>
          <edge_type>1</edge_type>
          <source_obj>88</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>113</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>114</id>
          <edge_type>1</edge_type>
          <source_obj>87</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>115</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>116</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>117</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>118</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>119</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>120</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>121</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>122</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>123</id>
          <edge_type>1</edge_type>
          <source_obj>22</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>124</id>
          <edge_type>1</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>125</id>
          <edge_type>1</edge_type>
          <source_obj>26</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>126</id>
          <edge_type>1</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>127</id>
          <edge_type>1</edge_type>
          <source_obj>30</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>128</id>
          <edge_type>1</edge_type>
          <source_obj>32</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>129</id>
          <edge_type>1</edge_type>
          <source_obj>34</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>130</id>
          <edge_type>1</edge_type>
          <source_obj>36</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>131</id>
          <edge_type>1</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>132</id>
          <edge_type>1</edge_type>
          <source_obj>40</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>133</id>
          <edge_type>1</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>134</id>
          <edge_type>1</edge_type>
          <source_obj>44</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_46">
          <id>135</id>
          <edge_type>1</edge_type>
          <source_obj>46</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_47">
          <id>136</id>
          <edge_type>1</edge_type>
          <source_obj>48</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_48">
          <id>137</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_49">
          <id>138</id>
          <edge_type>1</edge_type>
          <source_obj>52</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_50">
          <id>139</id>
          <edge_type>1</edge_type>
          <source_obj>54</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_51">
          <id>140</id>
          <edge_type>1</edge_type>
          <source_obj>56</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_52">
          <id>141</id>
          <edge_type>1</edge_type>
          <source_obj>58</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_53">
          <id>142</id>
          <edge_type>1</edge_type>
          <source_obj>60</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_54">
          <id>143</id>
          <edge_type>1</edge_type>
          <source_obj>62</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_55">
          <id>144</id>
          <edge_type>1</edge_type>
          <source_obj>64</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_56">
          <id>145</id>
          <edge_type>1</edge_type>
          <source_obj>66</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_57">
          <id>146</id>
          <edge_type>1</edge_type>
          <source_obj>68</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_58">
          <id>147</id>
          <edge_type>1</edge_type>
          <source_obj>70</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_59">
          <id>148</id>
          <edge_type>1</edge_type>
          <source_obj>72</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_60">
          <id>149</id>
          <edge_type>1</edge_type>
          <source_obj>74</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_61">
          <id>150</id>
          <edge_type>1</edge_type>
          <source_obj>76</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_62">
          <id>151</id>
          <edge_type>1</edge_type>
          <source_obj>78</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_63">
          <id>152</id>
          <edge_type>1</edge_type>
          <source_obj>80</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_64">
          <id>153</id>
          <edge_type>1</edge_type>
          <source_obj>82</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_65">
          <id>154</id>
          <edge_type>1</edge_type>
          <source_obj>84</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_66">
          <id>298</id>
          <edge_type>4</edge_type>
          <source_obj>96</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_67">
          <id>299</id>
          <edge_type>4</edge_type>
          <source_obj>96</source_obj>
          <sink_obj>97</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_68">
        <mId>1</mId>
        <mTag>conv3x3_bn_act_DSPop.1</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>99</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>-1</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_69">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_70">
              <type>0</type>
              <name>conv3padding712_U0</name>
              <ssdmobj_id>96</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>5</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_71">
                  <port class_id="29" tracking_level="1" version="0" object_id="_72">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_73">
                    <type>0</type>
                    <name>conv3padding712_U0</name>
                    <ssdmobj_id>96</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_74">
                  <port class_id_reference="29" object_id="_75">
                    <name>reps_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_73"/>
                </item>
                <item class_id_reference="28" object_id="_76">
                  <port class_id_reference="29" object_id="_77">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_73"/>
                </item>
                <item class_id_reference="28" object_id="_78">
                  <port class_id_reference="29" object_id="_79">
                    <name>padding_out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_73"/>
                </item>
                <item class_id_reference="28" object_id="_80">
                  <port class_id_reference="29" object_id="_81">
                    <name>reps_c_i</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_73"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_82">
              <type>0</type>
              <name>convDSPOpt_4_U0</name>
              <ssdmobj_id>97</ssdmobj_id>
              <pins>
                <count>43</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_83">
                  <port class_id_reference="29" object_id="_84">
                    <name>vec_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_85">
                    <type>0</type>
                    <name>convDSPOpt_4_U0</name>
                    <ssdmobj_id>97</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_86">
                  <port class_id_reference="29" object_id="_87">
                    <name>out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_88">
                  <port class_id_reference="29" object_id="_89">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_90">
                  <port class_id_reference="29" object_id="_91">
                    <name>conv_2_inc_new_V_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_92">
                  <port class_id_reference="29" object_id="_93">
                    <name>conv_2_bias_new_V_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_94">
                  <port class_id_reference="29" object_id="_95">
                    <name>conv_2_inc_new_V_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_96">
                  <port class_id_reference="29" object_id="_97">
                    <name>conv_2_bias_new_V_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_98">
                  <port class_id_reference="29" object_id="_99">
                    <name>conv_2_inc_new_V_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_100">
                  <port class_id_reference="29" object_id="_101">
                    <name>conv_2_bias_new_V_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_102">
                  <port class_id_reference="29" object_id="_103">
                    <name>conv_2_inc_new_V_3</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_104">
                  <port class_id_reference="29" object_id="_105">
                    <name>conv_2_bias_new_V_3</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_106">
                  <port class_id_reference="29" object_id="_107">
                    <name>conv_2_inc_new_V_4</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_108">
                  <port class_id_reference="29" object_id="_109">
                    <name>conv_2_bias_new_V_4</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_110">
                  <port class_id_reference="29" object_id="_111">
                    <name>conv_2_inc_new_V_5</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_112">
                  <port class_id_reference="29" object_id="_113">
                    <name>conv_2_bias_new_V_5</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_114">
                  <port class_id_reference="29" object_id="_115">
                    <name>conv_2_inc_new_V_6</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_116">
                  <port class_id_reference="29" object_id="_117">
                    <name>conv_2_bias_new_V_6</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_118">
                  <port class_id_reference="29" object_id="_119">
                    <name>conv_2_inc_new_V_7</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_120">
                  <port class_id_reference="29" object_id="_121">
                    <name>conv_2_bias_new_V_7</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_122">
                  <port class_id_reference="29" object_id="_123">
                    <name>conv_2_w_new_V_0_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_124">
                  <port class_id_reference="29" object_id="_125">
                    <name>conv_2_w_new_V_0_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_126">
                  <port class_id_reference="29" object_id="_127">
                    <name>conv_2_w_new_V_0_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_128">
                  <port class_id_reference="29" object_id="_129">
                    <name>conv_2_w_new_V_1_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_130">
                  <port class_id_reference="29" object_id="_131">
                    <name>conv_2_w_new_V_1_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_132">
                  <port class_id_reference="29" object_id="_133">
                    <name>conv_2_w_new_V_1_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_134">
                  <port class_id_reference="29" object_id="_135">
                    <name>conv_2_w_new_V_2_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_136">
                  <port class_id_reference="29" object_id="_137">
                    <name>conv_2_w_new_V_2_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_138">
                  <port class_id_reference="29" object_id="_139">
                    <name>conv_2_w_new_V_2_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_140">
                  <port class_id_reference="29" object_id="_141">
                    <name>conv_2_w_new_V_3_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_142">
                  <port class_id_reference="29" object_id="_143">
                    <name>conv_2_w_new_V_3_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_144">
                  <port class_id_reference="29" object_id="_145">
                    <name>conv_2_w_new_V_3_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_146">
                  <port class_id_reference="29" object_id="_147">
                    <name>conv_2_w_new_V_4_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_148">
                  <port class_id_reference="29" object_id="_149">
                    <name>conv_2_w_new_V_4_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_150">
                  <port class_id_reference="29" object_id="_151">
                    <name>conv_2_w_new_V_4_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_152">
                  <port class_id_reference="29" object_id="_153">
                    <name>conv_2_w_new_V_5_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_154">
                  <port class_id_reference="29" object_id="_155">
                    <name>conv_2_w_new_V_5_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_156">
                  <port class_id_reference="29" object_id="_157">
                    <name>conv_2_w_new_V_5_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_158">
                  <port class_id_reference="29" object_id="_159">
                    <name>conv_2_w_new_V_6_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_160">
                  <port class_id_reference="29" object_id="_161">
                    <name>conv_2_w_new_V_6_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_162">
                  <port class_id_reference="29" object_id="_163">
                    <name>conv_2_w_new_V_6_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_164">
                  <port class_id_reference="29" object_id="_165">
                    <name>conv_2_w_new_V_7_2</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_166">
                  <port class_id_reference="29" object_id="_167">
                    <name>conv_2_w_new_V_7_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
                <item class_id_reference="28" object_id="_168">
                  <port class_id_reference="29" object_id="_169">
                    <name>conv_2_w_new_V_7_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_85"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_170">
              <type>1</type>
              <name>padding_out_V_V</name>
              <ssdmobj_id>88</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>64</bitwidth>
              <source class_id_reference="28" object_id="_171">
                <port class_id_reference="29" object_id="_172">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_73"/>
              </source>
              <sink class_id_reference="28" object_id="_173">
                <port class_id_reference="29" object_id="_174">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_85"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_175">
              <type>1</type>
              <name>reps_c_i</name>
              <ssdmobj_id>87</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_176">
                <port class_id_reference="29" object_id="_177">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_73"/>
              </source>
              <sink class_id_reference="28" object_id="_178">
                <port class_id_reference="29" object_id="_179">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_85"/>
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
    <fsm class_id="34" tracking_level="1" version="0" object_id="_180">
      <states class_id="35" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_181">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_182">
              <id>87</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_183">
              <id>88</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_184">
              <id>96</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_185">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_186">
              <id>96</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_187">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_188">
              <id>97</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_189">
          <id>4</id>
          <operations>
            <count>11</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_190">
              <id>85</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_191">
              <id>86</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_192">
              <id>89</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_193">
              <id>90</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_194">
              <id>91</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_195">
              <id>92</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_196">
              <id>93</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_197">
              <id>94</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_198">
              <id>95</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_199">
              <id>97</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_200">
              <id>98</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_201">
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
        <item class_id_reference="40" object_id="_202">
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
        <item class_id_reference="40" object_id="_203">
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
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_204">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>conv3padding712_U0 (conv3padding712)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>5</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>4</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>496</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1113</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>convDSPOpt_4_U0 (convDSPOpt_4)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>24</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>82</second>
            </item>
            <item>
              <first>FF</first>
              <second>14916</second>
            </item>
            <item>
              <first>LUT</first>
              <second>18056</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_convDSPcwx_U (start_for_convDSPcwx)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
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
        <count>2</count>
        <item_version>0</item_version>
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
              <second>64</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>128</second>
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
              <second>76</second>
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
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>conv3padding712_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>convDSPOpt_4_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_convDSPcwx_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>conv3padding712_U0 (conv3padding712)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>96</item>
          </second>
        </item>
        <item>
          <first>convDSPOpt_4_U0 (convDSPOpt_4)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>97</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>padding_out_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>80</item>
          </second>
        </item>
        <item>
          <first>reps_c_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>91</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>87</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>88</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>96</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>97</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>98</first>
        <second>
          <first>3</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>99</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>3</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_205">
        <region_name>conv3x3_bn_act_DSPop.1</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>99</item>
        </basic_blocks>
        <nodes>
          <count>14</count>
          <item_version>0</item_version>
          <item>85</item>
          <item>86</item>
          <item>87</item>
          <item>88</item>
          <item>89</item>
          <item>90</item>
          <item>91</item>
          <item>92</item>
          <item>93</item>
          <item>94</item>
          <item>95</item>
          <item>96</item>
          <item>97</item>
          <item>98</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>122</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>87</item>
        </second>
      </item>
      <item>
        <first>126</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>88</item>
        </second>
      </item>
      <item>
        <first>130</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>97</item>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>218</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>96</item>
          <item>96</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>padding_out_V_V_fu_126</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>88</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_fu_122</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>87</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>grp_conv3padding712_fu_218</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>96</item>
          <item>96</item>
        </second>
      </item>
      <item>
        <first>grp_convDSPOpt_4_fu_130</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>97</item>
          <item>97</item>
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
      <count>40</count>
      <item_version>0</item_version>
      <item class_id="65" tracking_level="0" version="0">
        <first class_id="66" tracking_level="0" version="0">
          <first>conv_2_bias_new_V_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_3</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_4</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_5</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_6</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_bias_new_V_7</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_3</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_4</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_5</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_6</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_inc_new_V_7</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_0_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_0_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_0_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_1_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_1_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_1_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_2_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_2_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_2_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_3_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_3_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_3_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_4_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_4_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_4_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_5_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_5_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_5_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_6_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_6_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_6_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_7_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_7_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_2_w_new_V_7_2</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>97</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>230</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>87</item>
        </second>
      </item>
      <item>
        <first>236</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>88</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>padding_out_V_V_reg_236</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>88</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_reg_230</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>87</item>
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
              <item>96</item>
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
              <item>97</item>
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
              <item>96</item>
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
              <item>96</item>
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
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>87</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>88</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
