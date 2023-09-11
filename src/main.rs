use gdal::version::VersionInfo;

fn main() {
    dbg!(VersionInfo::release_date());
    dbg!(VersionInfo::version_num());
    println!("Hello, world!");
}
