//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "../PreMarket.sol";

interface ISFS {
    function register(address _recipient) external returns (uint256 tokenId);
}

contract PreMarketMode is PreMarket {
    bytes32 public constant BLAST_POINT_OPERATOR_ROLE =
        keccak256("BLAST_POINT_OPERATOR_ROLE");

    ///////////////////////////
    ////// Register SFS //////
    ///////////////////////////
    function registerSFS() external {
        PreMarketStorage storage $ = _getOwnStorage();
        ISFS(0x8680CEaBcb9b56913c519c069Add6Bc3494B7020).register(
            $.config.feeWallet
        );
    }
}
