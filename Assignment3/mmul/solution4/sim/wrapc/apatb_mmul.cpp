#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_a_0_0 "../tv/cdatafile/c.mmul.autotvin_a_0_0.dat"
#define AUTOTB_TVOUT_a_0_0 "../tv/cdatafile/c.mmul.autotvout_a_0_0.dat"
#define AUTOTB_TVIN_a_0_1 "../tv/cdatafile/c.mmul.autotvin_a_0_1.dat"
#define AUTOTB_TVOUT_a_0_1 "../tv/cdatafile/c.mmul.autotvout_a_0_1.dat"
#define AUTOTB_TVIN_a_0_2 "../tv/cdatafile/c.mmul.autotvin_a_0_2.dat"
#define AUTOTB_TVOUT_a_0_2 "../tv/cdatafile/c.mmul.autotvout_a_0_2.dat"
#define AUTOTB_TVIN_a_0_3 "../tv/cdatafile/c.mmul.autotvin_a_0_3.dat"
#define AUTOTB_TVOUT_a_0_3 "../tv/cdatafile/c.mmul.autotvout_a_0_3.dat"
#define AUTOTB_TVIN_a_1_0 "../tv/cdatafile/c.mmul.autotvin_a_1_0.dat"
#define AUTOTB_TVOUT_a_1_0 "../tv/cdatafile/c.mmul.autotvout_a_1_0.dat"
#define AUTOTB_TVIN_a_1_1 "../tv/cdatafile/c.mmul.autotvin_a_1_1.dat"
#define AUTOTB_TVOUT_a_1_1 "../tv/cdatafile/c.mmul.autotvout_a_1_1.dat"
#define AUTOTB_TVIN_a_1_2 "../tv/cdatafile/c.mmul.autotvin_a_1_2.dat"
#define AUTOTB_TVOUT_a_1_2 "../tv/cdatafile/c.mmul.autotvout_a_1_2.dat"
#define AUTOTB_TVIN_a_1_3 "../tv/cdatafile/c.mmul.autotvin_a_1_3.dat"
#define AUTOTB_TVOUT_a_1_3 "../tv/cdatafile/c.mmul.autotvout_a_1_3.dat"
#define AUTOTB_TVIN_a_2_0 "../tv/cdatafile/c.mmul.autotvin_a_2_0.dat"
#define AUTOTB_TVOUT_a_2_0 "../tv/cdatafile/c.mmul.autotvout_a_2_0.dat"
#define AUTOTB_TVIN_a_2_1 "../tv/cdatafile/c.mmul.autotvin_a_2_1.dat"
#define AUTOTB_TVOUT_a_2_1 "../tv/cdatafile/c.mmul.autotvout_a_2_1.dat"
#define AUTOTB_TVIN_a_2_2 "../tv/cdatafile/c.mmul.autotvin_a_2_2.dat"
#define AUTOTB_TVOUT_a_2_2 "../tv/cdatafile/c.mmul.autotvout_a_2_2.dat"
#define AUTOTB_TVIN_a_2_3 "../tv/cdatafile/c.mmul.autotvin_a_2_3.dat"
#define AUTOTB_TVOUT_a_2_3 "../tv/cdatafile/c.mmul.autotvout_a_2_3.dat"
#define AUTOTB_TVIN_b_0_0 "../tv/cdatafile/c.mmul.autotvin_b_0_0.dat"
#define AUTOTB_TVOUT_b_0_0 "../tv/cdatafile/c.mmul.autotvout_b_0_0.dat"
#define AUTOTB_TVIN_b_0_1 "../tv/cdatafile/c.mmul.autotvin_b_0_1.dat"
#define AUTOTB_TVOUT_b_0_1 "../tv/cdatafile/c.mmul.autotvout_b_0_1.dat"
#define AUTOTB_TVIN_b_0_2 "../tv/cdatafile/c.mmul.autotvin_b_0_2.dat"
#define AUTOTB_TVOUT_b_0_2 "../tv/cdatafile/c.mmul.autotvout_b_0_2.dat"
#define AUTOTB_TVIN_b_0_3 "../tv/cdatafile/c.mmul.autotvin_b_0_3.dat"
#define AUTOTB_TVOUT_b_0_3 "../tv/cdatafile/c.mmul.autotvout_b_0_3.dat"
#define AUTOTB_TVIN_b_0_4 "../tv/cdatafile/c.mmul.autotvin_b_0_4.dat"
#define AUTOTB_TVOUT_b_0_4 "../tv/cdatafile/c.mmul.autotvout_b_0_4.dat"
#define AUTOTB_TVIN_b_0_5 "../tv/cdatafile/c.mmul.autotvin_b_0_5.dat"
#define AUTOTB_TVOUT_b_0_5 "../tv/cdatafile/c.mmul.autotvout_b_0_5.dat"
#define AUTOTB_TVIN_b_1_0 "../tv/cdatafile/c.mmul.autotvin_b_1_0.dat"
#define AUTOTB_TVOUT_b_1_0 "../tv/cdatafile/c.mmul.autotvout_b_1_0.dat"
#define AUTOTB_TVIN_b_1_1 "../tv/cdatafile/c.mmul.autotvin_b_1_1.dat"
#define AUTOTB_TVOUT_b_1_1 "../tv/cdatafile/c.mmul.autotvout_b_1_1.dat"
#define AUTOTB_TVIN_b_1_2 "../tv/cdatafile/c.mmul.autotvin_b_1_2.dat"
#define AUTOTB_TVOUT_b_1_2 "../tv/cdatafile/c.mmul.autotvout_b_1_2.dat"
#define AUTOTB_TVIN_b_1_3 "../tv/cdatafile/c.mmul.autotvin_b_1_3.dat"
#define AUTOTB_TVOUT_b_1_3 "../tv/cdatafile/c.mmul.autotvout_b_1_3.dat"
#define AUTOTB_TVIN_b_1_4 "../tv/cdatafile/c.mmul.autotvin_b_1_4.dat"
#define AUTOTB_TVOUT_b_1_4 "../tv/cdatafile/c.mmul.autotvout_b_1_4.dat"
#define AUTOTB_TVIN_b_1_5 "../tv/cdatafile/c.mmul.autotvin_b_1_5.dat"
#define AUTOTB_TVOUT_b_1_5 "../tv/cdatafile/c.mmul.autotvout_b_1_5.dat"
#define AUTOTB_TVIN_b_2_0 "../tv/cdatafile/c.mmul.autotvin_b_2_0.dat"
#define AUTOTB_TVOUT_b_2_0 "../tv/cdatafile/c.mmul.autotvout_b_2_0.dat"
#define AUTOTB_TVIN_b_2_1 "../tv/cdatafile/c.mmul.autotvin_b_2_1.dat"
#define AUTOTB_TVOUT_b_2_1 "../tv/cdatafile/c.mmul.autotvout_b_2_1.dat"
#define AUTOTB_TVIN_b_2_2 "../tv/cdatafile/c.mmul.autotvin_b_2_2.dat"
#define AUTOTB_TVOUT_b_2_2 "../tv/cdatafile/c.mmul.autotvout_b_2_2.dat"
#define AUTOTB_TVIN_b_2_3 "../tv/cdatafile/c.mmul.autotvin_b_2_3.dat"
#define AUTOTB_TVOUT_b_2_3 "../tv/cdatafile/c.mmul.autotvout_b_2_3.dat"
#define AUTOTB_TVIN_b_2_4 "../tv/cdatafile/c.mmul.autotvin_b_2_4.dat"
#define AUTOTB_TVOUT_b_2_4 "../tv/cdatafile/c.mmul.autotvout_b_2_4.dat"
#define AUTOTB_TVIN_b_2_5 "../tv/cdatafile/c.mmul.autotvin_b_2_5.dat"
#define AUTOTB_TVOUT_b_2_5 "../tv/cdatafile/c.mmul.autotvout_b_2_5.dat"
#define AUTOTB_TVIN_b_3_0 "../tv/cdatafile/c.mmul.autotvin_b_3_0.dat"
#define AUTOTB_TVOUT_b_3_0 "../tv/cdatafile/c.mmul.autotvout_b_3_0.dat"
#define AUTOTB_TVIN_b_3_1 "../tv/cdatafile/c.mmul.autotvin_b_3_1.dat"
#define AUTOTB_TVOUT_b_3_1 "../tv/cdatafile/c.mmul.autotvout_b_3_1.dat"
#define AUTOTB_TVIN_b_3_2 "../tv/cdatafile/c.mmul.autotvin_b_3_2.dat"
#define AUTOTB_TVOUT_b_3_2 "../tv/cdatafile/c.mmul.autotvout_b_3_2.dat"
#define AUTOTB_TVIN_b_3_3 "../tv/cdatafile/c.mmul.autotvin_b_3_3.dat"
#define AUTOTB_TVOUT_b_3_3 "../tv/cdatafile/c.mmul.autotvout_b_3_3.dat"
#define AUTOTB_TVIN_b_3_4 "../tv/cdatafile/c.mmul.autotvin_b_3_4.dat"
#define AUTOTB_TVOUT_b_3_4 "../tv/cdatafile/c.mmul.autotvout_b_3_4.dat"
#define AUTOTB_TVIN_b_3_5 "../tv/cdatafile/c.mmul.autotvin_b_3_5.dat"
#define AUTOTB_TVOUT_b_3_5 "../tv/cdatafile/c.mmul.autotvout_b_3_5.dat"
#define AUTOTB_TVIN_c "../tv/cdatafile/c.mmul.autotvin_c.dat"
#define AUTOTB_TVOUT_c "../tv/cdatafile/c.mmul.autotvout_c.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_a_0_0 "../tv/rtldatafile/rtl.mmul.autotvout_a_0_0.dat"
#define AUTOTB_TVOUT_PC_a_0_1 "../tv/rtldatafile/rtl.mmul.autotvout_a_0_1.dat"
#define AUTOTB_TVOUT_PC_a_0_2 "../tv/rtldatafile/rtl.mmul.autotvout_a_0_2.dat"
#define AUTOTB_TVOUT_PC_a_0_3 "../tv/rtldatafile/rtl.mmul.autotvout_a_0_3.dat"
#define AUTOTB_TVOUT_PC_a_1_0 "../tv/rtldatafile/rtl.mmul.autotvout_a_1_0.dat"
#define AUTOTB_TVOUT_PC_a_1_1 "../tv/rtldatafile/rtl.mmul.autotvout_a_1_1.dat"
#define AUTOTB_TVOUT_PC_a_1_2 "../tv/rtldatafile/rtl.mmul.autotvout_a_1_2.dat"
#define AUTOTB_TVOUT_PC_a_1_3 "../tv/rtldatafile/rtl.mmul.autotvout_a_1_3.dat"
#define AUTOTB_TVOUT_PC_a_2_0 "../tv/rtldatafile/rtl.mmul.autotvout_a_2_0.dat"
#define AUTOTB_TVOUT_PC_a_2_1 "../tv/rtldatafile/rtl.mmul.autotvout_a_2_1.dat"
#define AUTOTB_TVOUT_PC_a_2_2 "../tv/rtldatafile/rtl.mmul.autotvout_a_2_2.dat"
#define AUTOTB_TVOUT_PC_a_2_3 "../tv/rtldatafile/rtl.mmul.autotvout_a_2_3.dat"
#define AUTOTB_TVOUT_PC_b_0_0 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_0.dat"
#define AUTOTB_TVOUT_PC_b_0_1 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_1.dat"
#define AUTOTB_TVOUT_PC_b_0_2 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_2.dat"
#define AUTOTB_TVOUT_PC_b_0_3 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_3.dat"
#define AUTOTB_TVOUT_PC_b_0_4 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_4.dat"
#define AUTOTB_TVOUT_PC_b_0_5 "../tv/rtldatafile/rtl.mmul.autotvout_b_0_5.dat"
#define AUTOTB_TVOUT_PC_b_1_0 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_0.dat"
#define AUTOTB_TVOUT_PC_b_1_1 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_1.dat"
#define AUTOTB_TVOUT_PC_b_1_2 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_2.dat"
#define AUTOTB_TVOUT_PC_b_1_3 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_3.dat"
#define AUTOTB_TVOUT_PC_b_1_4 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_4.dat"
#define AUTOTB_TVOUT_PC_b_1_5 "../tv/rtldatafile/rtl.mmul.autotvout_b_1_5.dat"
#define AUTOTB_TVOUT_PC_b_2_0 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_0.dat"
#define AUTOTB_TVOUT_PC_b_2_1 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_1.dat"
#define AUTOTB_TVOUT_PC_b_2_2 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_2.dat"
#define AUTOTB_TVOUT_PC_b_2_3 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_3.dat"
#define AUTOTB_TVOUT_PC_b_2_4 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_4.dat"
#define AUTOTB_TVOUT_PC_b_2_5 "../tv/rtldatafile/rtl.mmul.autotvout_b_2_5.dat"
#define AUTOTB_TVOUT_PC_b_3_0 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_0.dat"
#define AUTOTB_TVOUT_PC_b_3_1 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_1.dat"
#define AUTOTB_TVOUT_PC_b_3_2 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_2.dat"
#define AUTOTB_TVOUT_PC_b_3_3 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_3.dat"
#define AUTOTB_TVOUT_PC_b_3_4 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_4.dat"
#define AUTOTB_TVOUT_PC_b_3_5 "../tv/rtldatafile/rtl.mmul.autotvout_b_3_5.dat"
#define AUTOTB_TVOUT_PC_c "../tv/rtldatafile/rtl.mmul.autotvout_c.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  a_0_0_depth = 0;
  a_0_1_depth = 0;
  a_0_2_depth = 0;
  a_0_3_depth = 0;
  a_1_0_depth = 0;
  a_1_1_depth = 0;
  a_1_2_depth = 0;
  a_1_3_depth = 0;
  a_2_0_depth = 0;
  a_2_1_depth = 0;
  a_2_2_depth = 0;
  a_2_3_depth = 0;
  b_0_0_depth = 0;
  b_0_1_depth = 0;
  b_0_2_depth = 0;
  b_0_3_depth = 0;
  b_0_4_depth = 0;
  b_0_5_depth = 0;
  b_1_0_depth = 0;
  b_1_1_depth = 0;
  b_1_2_depth = 0;
  b_1_3_depth = 0;
  b_1_4_depth = 0;
  b_1_5_depth = 0;
  b_2_0_depth = 0;
  b_2_1_depth = 0;
  b_2_2_depth = 0;
  b_2_3_depth = 0;
  b_2_4_depth = 0;
  b_2_5_depth = 0;
  b_3_0_depth = 0;
  b_3_1_depth = 0;
  b_3_2_depth = 0;
  b_3_3_depth = 0;
  b_3_4_depth = 0;
  b_3_5_depth = 0;
  c_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{a_0_0 " << a_0_0_depth << "}\n";
  total_list << "{a_0_1 " << a_0_1_depth << "}\n";
  total_list << "{a_0_2 " << a_0_2_depth << "}\n";
  total_list << "{a_0_3 " << a_0_3_depth << "}\n";
  total_list << "{a_1_0 " << a_1_0_depth << "}\n";
  total_list << "{a_1_1 " << a_1_1_depth << "}\n";
  total_list << "{a_1_2 " << a_1_2_depth << "}\n";
  total_list << "{a_1_3 " << a_1_3_depth << "}\n";
  total_list << "{a_2_0 " << a_2_0_depth << "}\n";
  total_list << "{a_2_1 " << a_2_1_depth << "}\n";
  total_list << "{a_2_2 " << a_2_2_depth << "}\n";
  total_list << "{a_2_3 " << a_2_3_depth << "}\n";
  total_list << "{b_0_0 " << b_0_0_depth << "}\n";
  total_list << "{b_0_1 " << b_0_1_depth << "}\n";
  total_list << "{b_0_2 " << b_0_2_depth << "}\n";
  total_list << "{b_0_3 " << b_0_3_depth << "}\n";
  total_list << "{b_0_4 " << b_0_4_depth << "}\n";
  total_list << "{b_0_5 " << b_0_5_depth << "}\n";
  total_list << "{b_1_0 " << b_1_0_depth << "}\n";
  total_list << "{b_1_1 " << b_1_1_depth << "}\n";
  total_list << "{b_1_2 " << b_1_2_depth << "}\n";
  total_list << "{b_1_3 " << b_1_3_depth << "}\n";
  total_list << "{b_1_4 " << b_1_4_depth << "}\n";
  total_list << "{b_1_5 " << b_1_5_depth << "}\n";
  total_list << "{b_2_0 " << b_2_0_depth << "}\n";
  total_list << "{b_2_1 " << b_2_1_depth << "}\n";
  total_list << "{b_2_2 " << b_2_2_depth << "}\n";
  total_list << "{b_2_3 " << b_2_3_depth << "}\n";
  total_list << "{b_2_4 " << b_2_4_depth << "}\n";
  total_list << "{b_2_5 " << b_2_5_depth << "}\n";
  total_list << "{b_3_0 " << b_3_0_depth << "}\n";
  total_list << "{b_3_1 " << b_3_1_depth << "}\n";
  total_list << "{b_3_2 " << b_3_2_depth << "}\n";
  total_list << "{b_3_3 " << b_3_3_depth << "}\n";
  total_list << "{b_3_4 " << b_3_4_depth << "}\n";
  total_list << "{b_3_5 " << b_3_5_depth << "}\n";
  total_list << "{c " << c_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int a_0_0_depth;
    int a_0_1_depth;
    int a_0_2_depth;
    int a_0_3_depth;
    int a_1_0_depth;
    int a_1_1_depth;
    int a_1_2_depth;
    int a_1_3_depth;
    int a_2_0_depth;
    int a_2_1_depth;
    int a_2_2_depth;
    int a_2_3_depth;
    int b_0_0_depth;
    int b_0_1_depth;
    int b_0_2_depth;
    int b_0_3_depth;
    int b_0_4_depth;
    int b_0_5_depth;
    int b_1_0_depth;
    int b_1_1_depth;
    int b_1_2_depth;
    int b_1_3_depth;
    int b_1_4_depth;
    int b_1_5_depth;
    int b_2_0_depth;
    int b_2_1_depth;
    int b_2_2_depth;
    int b_2_3_depth;
    int b_2_4_depth;
    int b_2_5_depth;
    int b_3_0_depth;
    int b_3_1_depth;
    int b_3_2_depth;
    int b_3_3_depth;
    int b_3_4_depth;
    int b_3_5_depth;
    int c_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void mmul_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_mmul_hw(volatile void * __xlx_apatb_param_a_0_0, volatile void * __xlx_apatb_param_a_0_1, volatile void * __xlx_apatb_param_a_0_2, volatile void * __xlx_apatb_param_a_0_3, volatile void * __xlx_apatb_param_a_1_0, volatile void * __xlx_apatb_param_a_1_1, volatile void * __xlx_apatb_param_a_1_2, volatile void * __xlx_apatb_param_a_1_3, volatile void * __xlx_apatb_param_a_2_0, volatile void * __xlx_apatb_param_a_2_1, volatile void * __xlx_apatb_param_a_2_2, volatile void * __xlx_apatb_param_a_2_3, volatile void * __xlx_apatb_param_b_0_0, volatile void * __xlx_apatb_param_b_0_1, volatile void * __xlx_apatb_param_b_0_2, volatile void * __xlx_apatb_param_b_0_3, volatile void * __xlx_apatb_param_b_0_4, volatile void * __xlx_apatb_param_b_0_5, volatile void * __xlx_apatb_param_b_1_0, volatile void * __xlx_apatb_param_b_1_1, volatile void * __xlx_apatb_param_b_1_2, volatile void * __xlx_apatb_param_b_1_3, volatile void * __xlx_apatb_param_b_1_4, volatile void * __xlx_apatb_param_b_1_5, volatile void * __xlx_apatb_param_b_2_0, volatile void * __xlx_apatb_param_b_2_1, volatile void * __xlx_apatb_param_b_2_2, volatile void * __xlx_apatb_param_b_2_3, volatile void * __xlx_apatb_param_b_2_4, volatile void * __xlx_apatb_param_b_2_5, volatile void * __xlx_apatb_param_b_3_0, volatile void * __xlx_apatb_param_b_3_1, volatile void * __xlx_apatb_param_b_3_2, volatile void * __xlx_apatb_param_b_3_3, volatile void * __xlx_apatb_param_b_3_4, volatile void * __xlx_apatb_param_b_3_5, volatile void * __xlx_apatb_param_c) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<16> tr(18);
aesl_fh.read(AUTOTB_TVOUT_PC_c, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<2>((char*)__xlx_apatb_param_c, 18);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > c_pc_buffer(18);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "c" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 18; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_c)[j*2+0] = c_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_c)[j*2+1] = c_pc_buffer[i].range(15, 8).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_c = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c, 'b');
transaction<16> tr(18);
  __xlx_offset_byte_param_c = 0*2;
  if (__xlx_apatb_param_c) {
tr.import<2>((char*)__xlx_apatb_param_c, 18, 0);
  }
aesl_fh.write(AUTOTB_TVIN_c, tr.p, tr.tbytes);
}

  tcl_file.set_num(18, &tcl_file.c_depth);
#else
// print c Transactions
{
aesl_fh.write(AUTOTB_TVIN_c, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c = 0*2;
if (__xlx_apatb_param_c) {
for (size_t i = 0; i < 18; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_c + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_c, s);
}
}
}

  tcl_file.set_num(18, &tcl_file.c_depth);
aesl_fh.write(AUTOTB_TVIN_c, end_str());
}

#endif
// print a_0_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_0_0;
aesl_fh.write(AUTOTB_TVIN_a_0_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_0_0_depth);
aesl_fh.write(AUTOTB_TVIN_a_0_0, end_str());
}

// print a_0_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_0_1;
aesl_fh.write(AUTOTB_TVIN_a_0_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_0_1_depth);
aesl_fh.write(AUTOTB_TVIN_a_0_1, end_str());
}

// print a_0_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_0_2;
aesl_fh.write(AUTOTB_TVIN_a_0_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_0_2_depth);
aesl_fh.write(AUTOTB_TVIN_a_0_2, end_str());
}

// print a_0_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_0_3;
aesl_fh.write(AUTOTB_TVIN_a_0_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_0_3_depth);
aesl_fh.write(AUTOTB_TVIN_a_0_3, end_str());
}

// print a_1_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_1_0;
aesl_fh.write(AUTOTB_TVIN_a_1_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_1_0_depth);
aesl_fh.write(AUTOTB_TVIN_a_1_0, end_str());
}

// print a_1_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_1_1;
aesl_fh.write(AUTOTB_TVIN_a_1_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_1_1_depth);
aesl_fh.write(AUTOTB_TVIN_a_1_1, end_str());
}

// print a_1_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_1_2;
aesl_fh.write(AUTOTB_TVIN_a_1_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_1_2_depth);
aesl_fh.write(AUTOTB_TVIN_a_1_2, end_str());
}

// print a_1_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_1_3;
aesl_fh.write(AUTOTB_TVIN_a_1_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_1_3_depth);
aesl_fh.write(AUTOTB_TVIN_a_1_3, end_str());
}

// print a_2_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_2_0;
aesl_fh.write(AUTOTB_TVIN_a_2_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_2_0_depth);
aesl_fh.write(AUTOTB_TVIN_a_2_0, end_str());
}

// print a_2_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_2_1;
aesl_fh.write(AUTOTB_TVIN_a_2_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_2_1_depth);
aesl_fh.write(AUTOTB_TVIN_a_2_1, end_str());
}

// print a_2_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_2_2;
aesl_fh.write(AUTOTB_TVIN_a_2_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_2_2_depth);
aesl_fh.write(AUTOTB_TVIN_a_2_2, end_str());
}

// print a_2_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_a_2_3;
aesl_fh.write(AUTOTB_TVIN_a_2_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.a_2_3_depth);
aesl_fh.write(AUTOTB_TVIN_a_2_3, end_str());
}

// print b_0_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_0;
aesl_fh.write(AUTOTB_TVIN_b_0_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_0, end_str());
}

// print b_0_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_1;
aesl_fh.write(AUTOTB_TVIN_b_0_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_1, end_str());
}

// print b_0_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_2;
aesl_fh.write(AUTOTB_TVIN_b_0_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_2, end_str());
}

// print b_0_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_3;
aesl_fh.write(AUTOTB_TVIN_b_0_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_3, end_str());
}

// print b_0_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_4;
aesl_fh.write(AUTOTB_TVIN_b_0_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_4_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_4, end_str());
}

// print b_0_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_0_5;
aesl_fh.write(AUTOTB_TVIN_b_0_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_0_5_depth);
aesl_fh.write(AUTOTB_TVIN_b_0_5, end_str());
}

// print b_1_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_0;
aesl_fh.write(AUTOTB_TVIN_b_1_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_0, end_str());
}

// print b_1_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_1;
aesl_fh.write(AUTOTB_TVIN_b_1_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_1, end_str());
}

// print b_1_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_2;
aesl_fh.write(AUTOTB_TVIN_b_1_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_2, end_str());
}

// print b_1_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_3;
aesl_fh.write(AUTOTB_TVIN_b_1_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_3, end_str());
}

// print b_1_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_4;
aesl_fh.write(AUTOTB_TVIN_b_1_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_4_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_4, end_str());
}

// print b_1_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_1_5;
aesl_fh.write(AUTOTB_TVIN_b_1_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_1_5_depth);
aesl_fh.write(AUTOTB_TVIN_b_1_5, end_str());
}

// print b_2_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_0;
aesl_fh.write(AUTOTB_TVIN_b_2_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_0, end_str());
}

// print b_2_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_1;
aesl_fh.write(AUTOTB_TVIN_b_2_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_1, end_str());
}

// print b_2_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_2;
aesl_fh.write(AUTOTB_TVIN_b_2_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_2, end_str());
}

// print b_2_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_3;
aesl_fh.write(AUTOTB_TVIN_b_2_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_3, end_str());
}

// print b_2_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_4;
aesl_fh.write(AUTOTB_TVIN_b_2_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_4_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_4, end_str());
}

// print b_2_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_2_5;
aesl_fh.write(AUTOTB_TVIN_b_2_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_2_5_depth);
aesl_fh.write(AUTOTB_TVIN_b_2_5, end_str());
}

// print b_3_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_0;
aesl_fh.write(AUTOTB_TVIN_b_3_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_0, end_str());
}

// print b_3_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_1;
aesl_fh.write(AUTOTB_TVIN_b_3_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_1, end_str());
}

// print b_3_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_2;
aesl_fh.write(AUTOTB_TVIN_b_3_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_2, end_str());
}

// print b_3_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_3;
aesl_fh.write(AUTOTB_TVIN_b_3_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_3, end_str());
}

// print b_3_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_4;
aesl_fh.write(AUTOTB_TVIN_b_3_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_4_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_4, end_str());
}

// print b_3_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_b_3_5;
aesl_fh.write(AUTOTB_TVIN_b_3_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.b_3_5_depth);
aesl_fh.write(AUTOTB_TVIN_b_3_5, end_str());
}

CodeState = CALL_C_DUT;
mmul_hw_stub_wrapper(__xlx_apatb_param_a_0_0, __xlx_apatb_param_a_0_1, __xlx_apatb_param_a_0_2, __xlx_apatb_param_a_0_3, __xlx_apatb_param_a_1_0, __xlx_apatb_param_a_1_1, __xlx_apatb_param_a_1_2, __xlx_apatb_param_a_1_3, __xlx_apatb_param_a_2_0, __xlx_apatb_param_a_2_1, __xlx_apatb_param_a_2_2, __xlx_apatb_param_a_2_3, __xlx_apatb_param_b_0_0, __xlx_apatb_param_b_0_1, __xlx_apatb_param_b_0_2, __xlx_apatb_param_b_0_3, __xlx_apatb_param_b_0_4, __xlx_apatb_param_b_0_5, __xlx_apatb_param_b_1_0, __xlx_apatb_param_b_1_1, __xlx_apatb_param_b_1_2, __xlx_apatb_param_b_1_3, __xlx_apatb_param_b_1_4, __xlx_apatb_param_b_1_5, __xlx_apatb_param_b_2_0, __xlx_apatb_param_b_2_1, __xlx_apatb_param_b_2_2, __xlx_apatb_param_b_2_3, __xlx_apatb_param_b_2_4, __xlx_apatb_param_b_2_5, __xlx_apatb_param_b_3_0, __xlx_apatb_param_b_3_1, __xlx_apatb_param_b_3_2, __xlx_apatb_param_b_3_3, __xlx_apatb_param_b_3_4, __xlx_apatb_param_b_3_5, __xlx_apatb_param_c);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_c, 'b');
transaction<16> tr(18);
  __xlx_offset_byte_param_c = 0*2;
  if (__xlx_apatb_param_c) {
tr.import<2>((char*)__xlx_apatb_param_c, 18, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_c, tr.p, tr.tbytes);
}

  tcl_file.set_num(18, &tcl_file.c_depth);
#else
// print c Transactions
{
aesl_fh.write(AUTOTB_TVOUT_c, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c = 0*2;
if (__xlx_apatb_param_c) {
for (size_t i = 0; i < 18; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_c + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_c, s);
}
}
}

  tcl_file.set_num(18, &tcl_file.c_depth);
aesl_fh.write(AUTOTB_TVOUT_c, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
