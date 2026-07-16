/**
 * SPDX-License-Identifier: UNLICENSED
 */
pragma solidity ^0.8.22;

import "./Actions.sol";
import "./MMarketOperations.sol";

library Parser {

  enum OperationType {
		GAMMA,
		MMARKET
	}

	struct Quote {
		address assetAddress; // underlying
		uint256 chainId;
		bool isPut;
		uint256 strike;
		uint64 expiry;
		address maker;
		uint64 nonce;
		uint256 price;
		uint256 quantity;
		bool isTakerBuy;
		uint64 validUntil;
		address usd;
	}

	struct Confirmation {
		address maker;
		address assetAddress;
		uint256 chainId; 
		uint64 expiry;
		bool isPut;
		uint64 nonce;
		uint256 price; 
		uint256 quantity; 
		uint64 quoteNonce; 
		bytes quoteSignature; 
		uint256 strike;
		address taker;
		bool isTakerBuy;
		address usd;
	}

	struct Transfer {
		address asset;
		uint256 chainId;
		uint256 amount;
		bool isDeposit;
		uint64 nonce;
	}


	/// @notice Parse a packed payload into both Quote and Confirmation structs
	/// @dev Parses 344-byte payload into Quote + Confirmation + sigs for both
	/// @dev also returns additional data needed to create an option position
	function parseQuoteAndConfirmation(bytes memory payload)
		public view
		returns (
			Quote memory q,
			Confirmation memory c,
			bytes memory quoteSig,
			bytes memory confSig,
			address collateralAsset,
			uint256 collateralAmount,
			uint256 fee
    )
	{

		// expected length:
		// 20 (maker) + 20 (asset) + 8 (expiry) +
		// 1 (isPut) + 8 (confirmationNonce) + 16 (price) +
		// 16 (quantity) + 8 (quoteNonce) + 65 (quoteSig) +
		// 65 (confSig) + 16 (strike) + 20 (taker) +
		// 1 (isTakerBuy) + 8 (validUntil) + 20 (usd) +
		// 20 (collateralAsset) + 16 (collateralAmount) + 16 (fee)
		// = 344 bytes total
		require(payload.length == 344, "Invalid payload length");

		quoteSig = new bytes(65);
		confSig = new bytes(65);

		assembly {
			let qPtr := q
			let cPtr := c

			// --- Confirmation fields ---
			mstore(cPtr, mload(add(payload, 20)))        // maker
			mstore(add(cPtr, 0x20), mload(add(payload, 40)))  // assetAddress
			mstore(add(cPtr, 0x40), chainid())          // chainId
			mstore(add(cPtr, 0x60), mload(add(payload, 48)))  // expiry
			mstore(add(cPtr, 0x80), and(mload(add(payload, 49)), 0xFF))  // isPut (mask all but last byte)
			mstore(add(cPtr, 0xA0), mload(add(payload, 57)))  // nonce (confirmationNonce)
			mstore(add(cPtr, 0xC0), mload(add(payload, 73)))  // price
			mstore(add(cPtr, 0xE0), mload(add(payload, 89)))  // quantity
			mstore(add(cPtr, 0x100), mload(add(payload, 97))) // quoteNonce
			mstore(add(cPtr, 0x120), quoteSig)               // quoteSignature pointer
			mstore(add(cPtr, 0x140), mload(add(payload, 243))) // strike
			mstore(add(cPtr, 0x160), mload(add(payload, 263))) // taker
			mstore8(add(cPtr, 0x180), and(mload(add(payload, 264)), 0xFF)) // isTakerBuy (mask all but last byte)
			mstore(add(cPtr, 0x1A0), mload(add(payload, 292))) // usd

			// --- Quote fields ---
			mstore(qPtr, mload(add(payload, 40)))        // assetAddress
			mstore(add(qPtr, 0x20), chainid())          // chainId
			mstore8(add(qPtr, 0x40), and(mload(add(payload, 49)), 0xFF))  // isPut (mask all but last byte)
			mstore(add(qPtr, 0x60), mload(add(payload, 243))) // strike
			mstore(add(qPtr, 0x80), mload(add(payload, 48)))  // expiry
			mstore(add(qPtr, 0xA0), mload(add(payload, 20)))  // maker
			mstore(add(qPtr, 0xC0), mload(add(payload, 97)))  // nonce = quoteNonce
			mstore(add(qPtr, 0xE0), mload(add(payload, 73)))  // price
			mstore(add(qPtr, 0x100), mload(add(payload, 89))) // quantity
			mstore(add(qPtr, 0x120), and(mload(add(payload, 264)), 0xFF)) // isTakerBuy (mask all but last byte)
			mstore(add(qPtr, 0x140), mload(add(payload, 272))) // validUntil
			mstore(add(qPtr, 0x160), mload(add(payload, 292))) // usd

			// --- Extract signatures safely ---
			// Quote signature
			mstore(add(quoteSig, 32), mload(add(payload, 129))) // bytes 0-31
			mstore(add(quoteSig, 64), mload(add(payload, 161))) // bytes 32-63
			mstore8(add(quoteSig, 96), byte(0, mload(add(payload, 193)))) // byte 64

			// Confirmation signature
			mstore(add(confSig, 32), mload(add(payload, 194)))  // bytes 0-31
			mstore(add(confSig, 64), mload(add(payload, 226)))  // bytes 32-63
			mstore8(add(confSig, 96), byte(0, mload(add(payload, 258)))) // byte 64

			// --- Collateral ---
			collateralAsset := mload(add(payload, 312))
			collateralAmount := mload(add(payload, 328))
			fee := mload(add(payload, 344))
		}

		// --- Cast uint128 → uint256 outside assembly ---
		q.strike = uint256(uint128(q.strike));
		q.price = uint256(uint128(q.price));
		q.quantity = uint256(uint128(q.quantity));

		c.strike = uint256(uint128(c.strike));
		c.price = uint256(uint128(c.price));
		c.quantity = uint256(uint128(c.quantity));

		collateralAmount = uint256(uint128(collateralAmount));
		fee = uint256(uint128(fee));
	}

	/// @notice Parse a packed payload into a Transfer struct and its signature
	/// @dev Parses 130-byte payload into Transfer + signature
	function parseTransfer(bytes memory payload) 
    public 
    view 
    returns (Transfer memory t, bytes memory sig, address user) 
	{

		// expected length:
		// 20 (asset) + 16 (amount) + 1 (isDeposit) + 8 (nonce) + 65 (sig) +
		// 20 (user)
		// = 130 bytes total
		require(payload.length == 130, "Invalid payload length");

		sig = new bytes(65);

		assembly {
			let tPtr := t

			// --- Transfer fields ---
			mstore(tPtr, mload(add(payload, 20))) // asset
			mstore(add(tPtr, 0x20), chainid()) // chainid
			mstore(add(tPtr, 0x40), mload(add(payload, 36))) // amount
			mstore(add(tPtr, 0x60), and(mload(add(payload, 37)), 0xFF)) // isDeposit (mask all but last byte)
			mstore(add(tPtr, 0x80), mload(add(payload, 45))) // nonce

			// --- Extract signature ---
			mstore(add(sig, 32), mload(add(payload, 77)))  // bytes 0–31
			mstore(add(sig, 64), mload(add(payload, 109)))  // bytes 32–63
			mstore8(add(sig, 96), byte(0, mload(add(payload, 141)))) // byte 64

			// --- User ---
			user := mload(add(payload, 130))
		}

		// Cast uint128 → uint256 for amount
		t.amount = uint256(uint128(t.amount));
	}
}



