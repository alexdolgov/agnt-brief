pragma solidity ^0.8.28;

import {ITheoWhitelist} from "../interfaces/ITheoWhitelist.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {TTokenV2} from "../v2/TTokenV2.sol";

interface IExternalOracle {
    function BPS_DENOMINATOR() external view returns (uint256);

    function lastSetMintExchangeRate() external view returns (uint256);
}

contract TULTRAV2 is TTokenV2 {
    using Math for uint256;

    IExternalOracle public oracle;

    function initialize(TTokenParams memory _tTokenParams, ITheoWhitelist _whitelistContract) public {
        super.initialize("tULTRA", "tULTRA", _tTokenParams, _whitelistContract);
        oracle = IExternalOracle(0x9056777AD890ECe386D646a5c698a9A6a779000B);
    }

    function _underlyingAssetsToEscrowAssets(uint256 underlyingAssets) internal view override returns (uint256) {
        uint256 exchangeRate = oracle.lastSetMintExchangeRate();
        uint256 bpsDenominator = oracle.BPS_DENOMINATOR();

        // baseTokenAmount * exchangeRate / BPS_DENOMINATOR (returns amount in quoteToken scaled by decimal difference)
        uint256 quoteTokenScaled = underlyingAssets.mulDiv(exchangeRate, bpsDenominator);

        uint256 underlyingDecimals = ERC20(asset()).decimals();
        uint256 escrowAssetDecimals = ERC20(tTokenParams.escrowAsset).decimals();

        if (underlyingDecimals > escrowAssetDecimals) {
            return quoteTokenScaled / (10 ** (underlyingDecimals - escrowAssetDecimals));
        } else {
            return quoteTokenScaled * (10 ** (escrowAssetDecimals - underlyingDecimals));
        }
    }
}
