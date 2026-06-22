pragma solidity ^0.8.10;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/*
   Volunteers can donate BTC and ETH through this contract,
   which will be utilized as a source of missing liquidity required for suppliers to withdraw their BTC and ETH from the Atlantis protocol.

   Thank you in advance for your help. 💜
*/
contract AtlantisRescue {
    using SafeERC20 for IERC20;

    address public immutable UNITROLLER = 0xE7E304F136c054Ee71199Efa6E26E8b0DAe242F3;
    address public immutable aBTC = 0x59123a930E52b52EdB27F91135253331F36cd87c;
    address public immutable BTC = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;
    address public immutable aETH = 0x4e9bF21Ce718Dde4be2E0F5b167181b8AdAd12F6;
    address public immutable ETH = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;
    address public immutable ATL = 0x1fD991fb6c3102873ba68a4e6e6a87B3a5c10271;

    uint256 public totalBTCDonated;
    uint256 public totalETHDonated;

    constructor() {
        IERC20(BTC).approve(aBTC, type(uint256).max);
        IERC20(ETH).approve(aETH, type(uint256).max);
    }

    /**
     * @notice A public function to supply BTC to the Atlantis protocol as a source of missing liquidity.
     */
    function donateBTC(uint256 amount) external {
        require(amount > 0, "Zero amount");

        uint256 allowance = IERC20(BTC).allowance(msg.sender, address(this));
        require(allowance >= amount, "Check the token allowance");

        IERC20(BTC).safeTransferFrom(msg.sender, address(this), amount);

        totalBTCDonated += amount;

        IAToken(aBTC).mint(amount);
    }

    /**
     * @notice A public function to supply ETH to the Atlantis protocol as a source of missing liquidity.
     */
    function donateETH(uint256 amount) external {
        require(amount > 0, "Zero amount");

        uint256 allowance = IERC20(ETH).allowance(msg.sender, address(this));
        require(allowance >= amount, "Check the token allowance");

        IERC20(ETH).safeTransferFrom(msg.sender, address(this), amount);

        totalETHDonated += amount;

        IAToken(aETH).mint(amount);
    }

    /**
     * @notice A public function to sweep accidental BTC or ETH transfers to this contract.
     * Tokens are supplied to the Atlantis protocol as a source of missing liquidity.
     */
    function sweep() external {
        uint256 btcBalance = IERC20(BTC).balanceOf(address(this));
        uint256 ethBalance = IERC20(ETH).balanceOf(address(this));

        if (btcBalance > 0) {
            totalBTCDonated += btcBalance;
            IAToken(aBTC).mint(btcBalance);
        }

        if (ethBalance > 0) {
            totalETHDonated += ethBalance;
            IAToken(aETH).mint(ethBalance);
        }
    }

    function claimAndBurnATL() external {
        IComptroller(UNITROLLER).claimAtlantis(address(this));

        IERC20(ATL).safeTransferFrom(
            address(this),
            0x000000000000000000000000000000000000dEaD,
            IERC20(ATL).balanceOf(address(this))
        );
    }
}

interface IAToken {
    function mint(uint256 mintAmount) external returns (uint256);
}

interface IComptroller {
    function claimAtlantis(address holder) external;
}
