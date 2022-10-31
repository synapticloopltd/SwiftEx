//
// String+Extension.swift
// 
//
// Created by syanpticloop
//
// (c) synapticloop 2022
//


import Foundation
import CommonCrypto

extension String {
	/**
	 Generate a SHA256 hash for a String

	 - Returns: the SHA 256 hash for the String
	 */
	public func sha256() -> String {
		let data = Data(self.utf8)
		var hash = [UInt8](repeating: 0,  count: Int(CC_SHA256_DIGEST_LENGTH))
		data.withUnsafeBytes {
			_ = CC_SHA256($0.baseAddress, CC_LONG(data.count), &hash)
		}
		return hash.map { String(format: "%02x", $0) }.joined()
	}
}
