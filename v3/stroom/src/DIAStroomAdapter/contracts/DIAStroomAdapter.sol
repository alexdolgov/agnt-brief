// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.29;

import "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./IDIAOracleV2.sol";

contract DIAStroomAdapter is Ownable(msg.sender) {
    // Assumption: DECIMALS is the number of decimals used by the oracle feeder at diaOracleAddress
    address[] public reserveWalletRegistry;
    mapping (address => address) public reserveWalletAsset;
    uint256 public DECIMALS = 18;
    address public diaOracleAddress;
    string public diaOracleQueryString;

    constructor(address _diaOracleAddress, string memory _diaOracleQueryString) {
        diaOracleAddress = _diaOracleAddress;
        diaOracleQueryString = _diaOracleQueryString;
    }

    function addReserveWalletToRegistry(address _reserveWallet, address _reserveWalletAsset) external onlyOwner {
        reserveWalletRegistry.push(_reserveWallet);
        reserveWalletAsset[_reserveWallet] = _reserveWalletAsset;
    }

    function removeReserveWalletFromRegistry(address _reserveWallet) external onlyOwner {
        for (uint i = 0; i < reserveWalletRegistry.length; i++) {
            if (reserveWalletRegistry[i] == _reserveWallet) {
                reserveWalletRegistry[i] = reserveWalletRegistry[reserveWalletRegistry.length - 1];
                reserveWalletRegistry.pop();
            }
        }
        delete reserveWalletAsset[_reserveWallet];
    }

    function updateContractDecimals(uint256 _decimals) external onlyOwner {
        DECIMALS = _decimals;
    }

    function updateDiaOracleAddress(address _diaOracleAddress) external onlyOwner {
        diaOracleAddress = _diaOracleAddress;
    }

    function getOnchainReserve() public view returns (uint256) {
        uint256 balanceAccumulator = 0;
        for(uint i = 0; i < reserveWalletRegistry.length; i++) {
            address currWallet = reserveWalletRegistry[i];
            address currAsset = reserveWalletAsset[currWallet];

            // Retrieve asset decimals and balanceOf
            uint8 currAssetDecimals = IERC20Metadata(currAsset).decimals();
            uint256 currAssetBalance = IERC20Metadata(currAsset).balanceOf(currWallet);

            // Perform decimal scaling
            if (currAssetDecimals < DECIMALS) {
                uint256 currDecimalDelta = DECIMALS - currAssetDecimals;
                currAssetBalance = currAssetBalance * (10 ** currDecimalDelta);
            } else if (currAssetDecimals > DECIMALS) {
                uint256 currDecimalDelta = currAssetDecimals - DECIMALS;
                currAssetBalance = currAssetBalance / (10 ** currDecimalDelta);
            }
            balanceAccumulator += currAssetBalance;
        }
        return balanceAccumulator;
    }

    function getOffchainReserve() public view returns (uint256) {
        IDIAOracleV2 oracleInstance = IDIAOracleV2(diaOracleAddress);

        // Retrieve asset from oracle
        (uint128 offchainReserveValue,) = oracleInstance.getValue(diaOracleQueryString);
        return offchainReserveValue;
    }

    function getCombinedReserveValue() public view returns (uint256) {
        return getOnchainReserve() + getOffchainReserve();
    }
}