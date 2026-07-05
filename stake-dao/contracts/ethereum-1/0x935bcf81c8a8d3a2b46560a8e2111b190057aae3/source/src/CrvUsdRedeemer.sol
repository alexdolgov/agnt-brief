// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import { IBorrowerOperations } from "./interfaces/IBorrowerOperations.sol";
import { ITroveManager } from "./interfaces/ITroveManager.sol";
import { IDebtToken } from "./interfaces/IDebtToken.sol";
import { PrismaOwnable } from "./PrismaOwnable.sol";
import { IPrismaPSM } from "./interfaces/IPrismaPSM.sol";

contract CrvUsdRedeemer is PrismaOwnable {
    using SafeERC20 for IERC20;

    IERC20 constant public CRVUSD = IERC20(0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E);
    address constant public RESUPPLY_TREASURY = 0x4444444455bF42de586A88426E5412971eA48324;
    address immutable public psm;
    IERC20 immutable public debtToken;

    constructor(address _prismaCore, address _psm) PrismaOwnable(_prismaCore) {
        debtToken = IERC20(IPrismaPSM(_psm).debtToken());
        psm = _psm;
    }

    function redeem() external returns (uint256) {
        uint256 _amount = getPsmBalance();
        _mintDebtTokens(_amount);
        IPrismaPSM(psm).sellDebtToken(_amount);
        CRVUSD.transfer(RESUPPLY_TREASURY, _amount);
        return _amount;
    }

    function getPsmBalance() public view returns (uint256) {
        return IERC20(CRVUSD).balanceOf(psm);
    }

    function _mintDebtTokens(uint256 amount) internal {
        IDebtToken(address(debtToken)).mint(address(this), amount);
    }

    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount);
    }

    // Required + Optional TM interfaces
    // useful for avoiding reverts on calls from pre-existing helper contracts that rely on standard interface
    function fetchPrice() public view returns (uint256) {}
    function setAddresses(address,address,address) external {}
    function setParameters(uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256) external {}
    function collateralToken() public view returns (address) {return address(CRVUSD);}
    function getTroveStatus(address) external view returns (uint256) {}
    function getTroveCollAndDebt(address) external view returns (uint256, uint256) {}
    function getEntireDebtAndColl(address) external view returns (uint256, uint256, uint256, uint256) {}
    function getEntireSystemColl() external view returns (uint256) {}
    function getEntireSystemDebt() external view returns (uint256) {}
    function getEntireSystemBalances() external view returns (uint256, uint256, uint256) {}
    function getNominalICR(address) external view returns (uint256) {}
    function getCurrentICR(address) external view returns (uint256) {}
    function getTotalActiveCollateral() external view returns (uint256) {}
    function getTotalActiveDebt() external view returns (uint256) {}
    function getPendingCollAndDebtRewards(address) external view returns (uint256, uint256) {}
    function hasPendingRewards(address) external view returns (bool) {}
    function getRedemptionRate() external view returns (uint256) {}
    function getRedemptionRateWithDecay(uint256) external view returns (uint256) {}
    function getRedemptionFeeWithDecay(address) external view returns (uint256) {}
    function getBorrowingRate(address) external view returns (uint256) {}
    function getBorrowingRateWithDecay(address) external view returns (uint256) {}
    function getBorrowingFeeWithDecay(address) external view returns (uint256) {}
}