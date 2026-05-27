// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

library Types {
	struct OptionSeries {
		uint64 expiration;
		uint128 strike;
		bool isPut;
		address underlying;
		address strikeAsset;
		address collateral;
	}
	struct Order {
		OptionSeries optionSeries;
		uint256 amount;
		uint256 price;
		uint256 orderExpiry;
		address counterparty; // buyer for writes, seller for buybacks
		address seriesAddress;
		bool isBuyback; // true = buyback order, false = write order
	}
}
