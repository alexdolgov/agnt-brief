//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/ICakePool.sol";
import "./interfaces/IIFOPool.sol";
import "./interfaces/IMasterChef.sol";
import "./interfaces/IPancakePair.sol";
import "./interfaces/ISmartChefInitializable.sol";

contract VotePower is Ownable {
    constructor() {}

    address public constant CAKE_TOKEN = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82; // cake token.
    address public constant CAKE_POOL = 0x45c54210128a065de780C4B0Df3d16664f7f859e; // cake pool.
    address public IFO_POOL = 0x1B2A2f6ed4A1401E8C73B4c2B6172455ce2f78E8; // ifo pool.
    address public constant MASTERCHEF = 0x00B3ea589c4E566fE55974fFC129a5803f7D1D3c; // masterchef V2.
    address public constant CAKE_LP = 0x0eD7e52944161450477ee417DE9Cd3a859b14fD0; // cake lp.

    event NewIFOPool(address IFO_POOL);

    /**
     * @notice Set Voting Power Contract address
     * @dev Only callable by the contract owner.
     */
    function setIFOPool(address _IFO_POOL) external onlyOwner {
        require(_IFO_POOL != address(0), "Cannot be zero address");
        IFO_POOL = _IFO_POOL;
        emit NewIFOPool(IFO_POOL);
    }

    function getCakeBalance(address _user) public view returns (uint256) {
        return IERC20(CAKE_TOKEN).balanceOf(_user);
    }

    function getCakeVaultBalance(address _user) public pure returns (uint256) {
        return 0;
    }

    function getIFOPoolBalancee(address _user) public view returns (uint256) {
        (uint256 share, , , ) = IIFOPool(IFO_POOL).userInfo(_user);
        uint256 ifoPoolPricePerFullShare = IIFOPool(IFO_POOL).getPricePerFullShare();
        return (share * ifoPoolPricePerFullShare) / 1e18;
    }

    function getCakePoolBalance(address _user) public view returns (uint256) {
        (uint256 share, , , , , , uint256 userBoostedShare, , ) = ICakePool(CAKE_POOL).userInfo(_user);
        uint256 cakeVaultPricePerFullShare = ICakePool(CAKE_POOL).getPricePerFullShare();
        return (share * cakeVaultPricePerFullShare) / 1e18 - userBoostedShare;
    }

    function getCakeBnbLpBalance(address _user) public view returns (uint256) {
        uint256 totalSupplyLP = IPancakePair(CAKE_LP).totalSupply();
        (uint256 reserve0, , ) = IPancakePair(CAKE_LP).getReserves();
        (uint256 amount, ) = IMasterChef(MASTERCHEF).userInfo(2, _user);
        return (amount * reserve0) / totalSupplyLP;
    }

    function getPoolsBalance(address _user, address[] memory _pools) public view returns (uint256) {
        uint256 total;
        for (uint256 i = 0; i < _pools.length; i++) {
            (uint256 amount, ) = ISmartChefInitializable(_pools[i]).userInfo(_user);
            total += amount;
        }
        return total;
    }

    function getVotingPower(address _user, address[] memory _pools) public view returns (uint256) {
        return
            getCakeBalance(_user) +
            getCakeVaultBalance(_user) +
            getIFOPoolBalancee(_user) +
            getCakePoolBalance(_user) +
            getCakeBnbLpBalance(_user) +
            getPoolsBalance(_user, _pools);
    }

    function getVotingPowerWithoutPool(address _user) public view returns (uint256) {
        return
            getCakeBalance(_user) +
            getCakeVaultBalance(_user) +
            getIFOPoolBalancee(_user) +
            getCakePoolBalance(_user) +
            getCakeBnbLpBalance(_user);
    }
}
