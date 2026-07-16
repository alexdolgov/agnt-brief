pragma solidity ^0.8.28;

import {TTokenV2} from "../v2/TTokenV2.sol";
import {ITheoWhitelist} from "../interfaces/ITheoWhitelist.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {TTokenEscrow} from "../TTokenEscrow.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ITheoTTokenOracle} from "./interfaces/ITheoTTokenOracle.sol";

/**
 * @notice TTokenV3 implementation includes V2 functions and includes _underlyingAssetToEscrowAssets conversions for USD stablecoin escrows
 */
contract TTokenV3 is TTokenV2 {
    using Math for uint256;

    /// @custom:storage-location erc7201:theo.storage.TTokenV3
    struct TTokenV3Storage {
        address theoTTokenOracle;
    }

    // keccak256(abi.encode(uint256(keccak256("theo.storage.TTokenV3")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant TTOKENV3_STORAGE = 0x42af1bf462e97f603e619f51546298afbb015c04a301562a13ce10c74bae0c00;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        // disable initializer
        _disableInitializers();
    }

    /** @dev returns pointer to TTokenV3Storage */
    function _getTTokenV3Storage() private pure returns (TTokenV3Storage storage $) {
        bytes32 slot = TTOKENV3_STORAGE;
        assembly {
            $.slot := slot
        }
    }

    ///
    /// Oracle management
    ///

    /// @notice get TheoTTokenOracle address
    function getOracle() public view returns (address) {
        return _getTTokenV3Storage().theoTTokenOracle;
    }

    function setOracle(address _theoTTokenOracle) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // ensure oracle can price this
        require(ITheoTTokenOracle(_theoTTokenOracle).getLatestExchangeRate() != 0, "Oracle not set for underlying asset");
        _getTTokenV3Storage().theoTTokenOracle = _theoTTokenOracle;
    }

    ///
    /// Function overrides
    ///

    /// @notice override to use TheoTTokenOracle for conversion (USD stablecoin escrows)
    function _underlyingAssetsToEscrowAssets(uint256 underlyingAssets) internal view override returns (uint256) {
        // get oracle instance
        ITheoTTokenOracle oracle = ITheoTTokenOracle(getOracle());

        uint256 exchangeRate = oracle.getLatestExchangeRate();
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
