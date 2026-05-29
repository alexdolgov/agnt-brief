// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./ITangibleNFT.sol";

interface IVoucher {
    /// @dev Voucher for lazy-minting
    struct MintVoucher {
        ITangibleNFT token;
        uint256 mintCount;
        uint256 price;
        address vendor;
        address buyer;
        string brand;
    }

    /// @dev Voucher for lazy-burning
    struct BurnVoucher {
        ITangibleNFT token;
        uint256[] tokenIds;
    }
}
