pragma solidity >=0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol';
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';

/**
 * @title Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of octo
 * Note: All variables are 18 decimals, except from that of underlying tokens
 */
interface IPool
{
    struct AssetOcto {
        uint256 cash;
        uint256 liability;
        uint256 maxSupply;
        uint256 totalSupply;
        uint8 decimals;
        address token;
        bool active;
    }

    function indexToAsset(uint256 _id) external view returns (AssetOcto memory);
    function assetToIndex(address _asset) external view returns (uint256);

    // Getters //
    function dev() external view returns (address);

    function a() external view returns (uint256);

    function lpFee() external view returns (uint256);

    function lpDividendRatio() external view returns (uint256);

    function lastIndex() external view returns (uint256);

    function dynamicFeeThreshold() external view returns (uint256);

    function dynamicFeeMaximum() external view returns (uint256);

    function dynamicFeePow() external view returns (uint256);

    function mintFee(uint256 _id) external;

    function feeCounter() external view returns (address);

    function withdraw(
        uint256 _id,
        uint256 _liquidity,
        uint256 _minAmount,
        address _to,
        uint256 _deadline
    )
    external
    returns (uint256 amount, uint256 fee);
}
