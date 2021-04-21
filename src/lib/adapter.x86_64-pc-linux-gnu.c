/* Generated by :claw at 2021-04-21T19:16:25.881979Z */

#include <stddef.h>
#if defined(__cplusplus)
#include <new>
#endif



#include "pipewire/pipewire.h"


#if !defined(__CLAW_API)
#  if defined(_WIN32)
#    define __CLAW_API __declspec(dllexport)
#  elif defined(__GNUC__)
#    define __CLAW_API __attribute__((visibility("default")))
#  else
#    define __CLAW_API
#  endif
#endif

#ifdef _WIN32
#  include <windows.h>
static HMODULE ___claw_module;

static int ___claw_init_wrapper() {
  ___claw_module = GetModuleHandle(NULL);
  return ___claw_module != NULL;
}

static void ___claw_close_wrapper(void) {
}
#else
#  include <dlfcn.h>
static void* ___claw_module;

static int ___claw_init_wrapper() {
  ___claw_module = dlopen(NULL, RTLD_NOW | RTLD_GLOBAL);
  return ___claw_module != NULL;
}

static void ___claw_close_wrapper(void) {
}
#endif

static void* claw_get_proc_addr(const char *name) {
  if(___claw_module == NULL) {
    return NULL;
  }

#ifdef _WIN32
  return (void*) GetProcAddress(___claw_module, name);
#else
  return dlsym(___claw_module, name);
#endif
}

#if defined(__cplusplus)
extern "C" {
#endif

typedef void* (*pw_registry_bind_t)(struct pw_registry*,uint32_t,const char*,uint32_t,size_t);
typedef void (*pw_array_init_t)(struct pw_array*,size_t);
typedef int (*pw_core_errorv_t)(struct pw_core*,uint32_t,int,int,const char*,va_list);
typedef void (*pw_memblock_unref_t)(struct pw_memblock*);
typedef double (*pw_properties_parse_double_t)(const char*);
typedef void (*pw_map_range_init_t)(struct pw_map_range*,uint32_t,uint32_t,uint32_t);
typedef float (*pw_properties_parse_float_t)(const char*);
typedef uint64_t (*pw_properties_parse_uint64_t)(const char*);
typedef struct pw_registry* (*pw_core_get_registry_t)(struct pw_core*,uint32_t,size_t);
typedef int (*pw_core_errorf_t)(struct pw_core*,uint32_t,int,int,const char*);
typedef int (*pw_map_insert_at_t)(struct pw_map*,uint32_t,void*);
typedef void (*pw_array_reset_t)(struct pw_array*);
typedef void* (*pw_array_add_fixed_t)(struct pw_array*,size_t);
typedef uint32_t (*pw_map_insert_new_t)(struct pw_map*,void*);
typedef bool (*pw_properties_parse_bool_t)(const char*);
typedef int (*pw_map_for_each_t)(struct pw_map*,int(*)(void*, void*),void*);
typedef int (*pw_array_ensure_size_t)(struct pw_array*,size_t);
typedef void (*pw_map_reset_t)(struct pw_map*);
typedef void* (*pw_core_create_object_t)(struct pw_core*,const char*,const char*,uint32_t,const struct spa_dict*,size_t);
typedef void (*pw_map_clear_t)(struct pw_map*);
typedef void* (*pw_array_add_t)(struct pw_array*,size_t);
typedef void* (*pw_map_lookup_t)(struct pw_map*,uint32_t);
typedef void (*pw_map_init_t)(struct pw_map*,size_t,size_t);
typedef void (*pw_map_remove_t)(struct pw_map*,uint32_t);
typedef int (*pw_properties_parse_int_t)(const char*);
typedef int64_t (*pw_properties_parse_int64_t)(const char*);
typedef void (*pw_array_clear_t)(struct pw_array*);

static pw_registry_bind_t __v_claw_pw_registry_bind;
static pw_array_init_t __v_claw_pw_array_init;
static pw_core_errorv_t __v_claw_pw_core_errorv;
static pw_memblock_unref_t __v_claw_pw_memblock_unref;
static pw_properties_parse_double_t __v_claw_pw_properties_parse_double;
static pw_map_range_init_t __v_claw_pw_map_range_init;
static pw_properties_parse_float_t __v_claw_pw_properties_parse_float;
static pw_properties_parse_uint64_t __v_claw_pw_properties_parse_uint64;
static pw_core_get_registry_t __v_claw_pw_core_get_registry;
static pw_core_errorf_t __v_claw_pw_core_errorf;
static pw_map_insert_at_t __v_claw_pw_map_insert_at;
static pw_array_reset_t __v_claw_pw_array_reset;
static pw_array_add_fixed_t __v_claw_pw_array_add_fixed;
static pw_map_insert_new_t __v_claw_pw_map_insert_new;
static pw_properties_parse_bool_t __v_claw_pw_properties_parse_bool;
static pw_map_for_each_t __v_claw_pw_map_for_each;
static pw_array_ensure_size_t __v_claw_pw_array_ensure_size;
static pw_map_reset_t __v_claw_pw_map_reset;
static pw_core_create_object_t __v_claw_pw_core_create_object;
static pw_map_clear_t __v_claw_pw_map_clear;
static pw_array_add_t __v_claw_pw_array_add;
static pw_map_lookup_t __v_claw_pw_map_lookup;
static pw_map_init_t __v_claw_pw_map_init;
static pw_map_remove_t __v_claw_pw_map_remove;
static pw_properties_parse_int_t __v_claw_pw_properties_parse_int;
static pw_properties_parse_int64_t __v_claw_pw_properties_parse_int64;
static pw_array_clear_t __v_claw_pw_array_clear;

__CLAW_API int __claw_claw_pipewire_wrapper_loader_96C098A1239E35BD6E9E94EF56D5() {
  if(___claw_init_wrapper()) {

__v_claw_pw_registry_bind = (pw_registry_bind_t) claw_get_proc_addr("pw_registry_bind");
__v_claw_pw_array_init = (pw_array_init_t) claw_get_proc_addr("pw_array_init");
__v_claw_pw_core_errorv = (pw_core_errorv_t) claw_get_proc_addr("pw_core_errorv");
__v_claw_pw_memblock_unref = (pw_memblock_unref_t) claw_get_proc_addr("pw_memblock_unref");
__v_claw_pw_properties_parse_double = (pw_properties_parse_double_t) claw_get_proc_addr("pw_properties_parse_double");
__v_claw_pw_map_range_init = (pw_map_range_init_t) claw_get_proc_addr("pw_map_range_init");
__v_claw_pw_properties_parse_float = (pw_properties_parse_float_t) claw_get_proc_addr("pw_properties_parse_float");
__v_claw_pw_properties_parse_uint64 = (pw_properties_parse_uint64_t) claw_get_proc_addr("pw_properties_parse_uint64");
__v_claw_pw_core_get_registry = (pw_core_get_registry_t) claw_get_proc_addr("pw_core_get_registry");
__v_claw_pw_core_errorf = (pw_core_errorf_t) claw_get_proc_addr("pw_core_errorf");
__v_claw_pw_map_insert_at = (pw_map_insert_at_t) claw_get_proc_addr("pw_map_insert_at");
__v_claw_pw_array_reset = (pw_array_reset_t) claw_get_proc_addr("pw_array_reset");
__v_claw_pw_array_add_fixed = (pw_array_add_fixed_t) claw_get_proc_addr("pw_array_add_fixed");
__v_claw_pw_map_insert_new = (pw_map_insert_new_t) claw_get_proc_addr("pw_map_insert_new");
__v_claw_pw_properties_parse_bool = (pw_properties_parse_bool_t) claw_get_proc_addr("pw_properties_parse_bool");
__v_claw_pw_map_for_each = (pw_map_for_each_t) claw_get_proc_addr("pw_map_for_each");
__v_claw_pw_array_ensure_size = (pw_array_ensure_size_t) claw_get_proc_addr("pw_array_ensure_size");
__v_claw_pw_map_reset = (pw_map_reset_t) claw_get_proc_addr("pw_map_reset");
__v_claw_pw_core_create_object = (pw_core_create_object_t) claw_get_proc_addr("pw_core_create_object");
__v_claw_pw_map_clear = (pw_map_clear_t) claw_get_proc_addr("pw_map_clear");
__v_claw_pw_array_add = (pw_array_add_t) claw_get_proc_addr("pw_array_add");
__v_claw_pw_map_lookup = (pw_map_lookup_t) claw_get_proc_addr("pw_map_lookup");
__v_claw_pw_map_init = (pw_map_init_t) claw_get_proc_addr("pw_map_init");
__v_claw_pw_map_remove = (pw_map_remove_t) claw_get_proc_addr("pw_map_remove");
__v_claw_pw_properties_parse_int = (pw_properties_parse_int_t) claw_get_proc_addr("pw_properties_parse_int");
__v_claw_pw_properties_parse_int64 = (pw_properties_parse_int64_t) claw_get_proc_addr("pw_properties_parse_int64");
__v_claw_pw_array_clear = (pw_array_clear_t) claw_get_proc_addr("pw_array_clear");

    ___claw_close_wrapper();
    return 0;
  }
  return 1;
}


__CLAW_API void* __claw_pw_registry_bind(struct pw_registry* registry, uint32_t id, const char* type, uint32_t version, size_t user_data_size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/core.h:494:1
return pw_registry_bind(registry, id, type, version, user_data_size);
}

__CLAW_API void __claw_pw_array_init(struct pw_array* arr, size_t extend) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:85:20
pw_array_init(arr, extend);
}

__CLAW_API int __claw_pw_core_errorv(struct pw_core* core, uint32_t id, int seq, int res, const char* message, va_list args) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/core.h:325:1
return pw_core_errorv(core, id, seq, res, message, args);
}

__CLAW_API void __claw_pw_memblock_unref(struct pw_memblock* mem) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/mem.h:136:20
pw_memblock_unref(mem);
}

__CLAW_API double __claw_pw_properties_parse_double(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:117:22
return pw_properties_parse_double(value);
}

__CLAW_API void __claw_pw_map_range_init(struct pw_map_range* range, uint32_t offset, uint32_t size, uint32_t page_size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/mem.h:186:20
pw_map_range_init(range, offset, size, page_size);
}

__CLAW_API float __claw_pw_properties_parse_float(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:113:21
return pw_properties_parse_float(value);
}

__CLAW_API uint64_t __claw_pw_properties_parse_uint64(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:109:24
return pw_properties_parse_uint64(value);
}

__CLAW_API struct pw_registry* __claw_pw_core_get_registry(struct pw_core* core, uint32_t version, size_t user_data_size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/core.h:348:1
return pw_core_get_registry(core, version, user_data_size);
}

__CLAW_API int __claw_pw_core_errorf(struct pw_core* core, uint32_t id, int seq, int res, const char* message) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/core.h:336:1
return pw_core_errorf(core, id, seq, res, message);
}

__CLAW_API int __claw_pw_map_insert_at(struct pw_map* map, uint32_t id, void* data) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:133:19
return pw_map_insert_at(map, id, data);
}

__CLAW_API void __claw_pw_array_reset(struct pw_array* arr) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:99:20
pw_array_reset(arr);
}

__CLAW_API void* __claw_pw_array_add_fixed(struct pw_array* arr, size_t size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:142:21
return pw_array_add_fixed(arr, size);
}

__CLAW_API uint32_t __claw_pw_map_insert_new(struct pw_map* map, void* data) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:105:24
return pw_map_insert_new(map, data);
}

__CLAW_API bool __claw_pw_properties_parse_bool(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:97:20
return pw_properties_parse_bool(value);
}

__CLAW_API int __claw_pw_map_for_each(struct pw_map* map, int(*func)(void*, void*), void* data) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:188:19
return pw_map_for_each(map, func, data);
}

__CLAW_API int __claw_pw_array_ensure_size(struct pw_array* arr, size_t size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:105:19
return pw_array_ensure_size(arr, size);
}

__CLAW_API void __claw_pw_map_reset(struct pw_map* map) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:92:20
pw_map_reset(map);
}

__CLAW_API void* __claw_pw_core_create_object(struct pw_core* core, const char* factory_name, const char* type, uint32_t version, const struct spa_dict* props, size_t user_data_size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/core.h:358:1
return pw_core_create_object(core, factory_name, type, version, props, user_data_size);
}

__CLAW_API void __claw_pw_map_clear(struct pw_map* map) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:87:20
pw_map_clear(map);
}

__CLAW_API void* __claw_pw_array_add(struct pw_array* arr, size_t size) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:127:21
return pw_array_add(arr, size);
}

__CLAW_API void* __claw_pw_map_lookup(struct pw_map* map, uint32_t id) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:169:21
return pw_map_lookup(map, id);
}

__CLAW_API void __claw_pw_map_init(struct pw_map* map, size_t size, size_t extend) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:76:20
pw_map_init(map, size, extend);
}

__CLAW_API void __claw_pw_map_remove(struct pw_map* map, uint32_t id) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/map.h:157:20
pw_map_remove(map, id);
}

__CLAW_API int __claw_pw_properties_parse_int(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:101:19
return pw_properties_parse_int(value);
}

__CLAW_API int64_t __claw_pw_properties_parse_int64(const char* value) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/properties.h:105:23
return pw_properties_parse_int64(value);
}

__CLAW_API void __claw_pw_array_clear(struct pw_array* arr) {
// /home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/array.h:93:20
pw_array_clear(arr);
}

#if defined(__cplusplus)
}
#endif