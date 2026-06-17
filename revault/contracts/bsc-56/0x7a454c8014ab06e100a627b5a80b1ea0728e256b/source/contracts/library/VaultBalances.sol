// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

//import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@pancakeswap/pancake-swap-lib/contracts/access/Ownable.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "../reva/interfaces/IReVault.sol";
import "./interfaces/IACryptoSFarm.sol";
import "./interfaces/IAutoFarmStratX.sol";
import "../vaults/IACryptoSVault.sol";
import "../vaults/IBunnyVault.sol";
import "../vaults/IAutoFarm.sol";
import "../vaults/IBeefyVault.sol";

contract VaultBalances is Ownable {
    using SafeMath for uint;

    IReVault private constant revault = IReVault(0x2642fa04bd1f7250be6539c5bDa36335333d9Ccd);

    // mapping vault id to vault type, following
    //enum VaultTypes { Acryptos, Bunny, Auto, Beefy }
    mapping (uint => uint8) public vaultTypes;

    mapping (uint => uint) public autofarmPids;

    //function initialize(
    //) external initializer {
        //__Ownable_init();
    //}

    function getUserVaultBalance(address user, uint vid) public view returns (uint) {
        uint8 vaultType = vaultTypes[vid];
        //enum VaultTypes { Acryptos, Bunny, Auto, Beefy }
        if (vaultType == 0) {
            return getUserAcryptosVaultBalance(user, vid);
        } else if (vaultType == 1) {
            return getUserBunnyVaultBalance(user, vid);
        } else if (vaultType == 2) {
            uint pid = autofarmPids[vid];
            return getUserAutoVaultBalance(user, vid, pid);
        } else if (vaultType == 3) {
            return getUserBeefyVaultBalance(user, vid);
        }
    }

    function getUserAcryptosVaultBalance(address user, uint vid) public view returns (uint) {
        address userProxyContract = revault.userProxyContractAddress(user);
        (address farmAddress, address farmTokenAddress) = revault.vaultFarmInfo(vid);
        (address vaultAddress,,) = revault.vaults(vid);
        (uint farmBalance,,,) = IACryptoSFarm(farmAddress).userInfo(farmTokenAddress, userProxyContract);
        uint pricePerShare = IACryptoSVault(vaultAddress).getPricePerFullShare();
        return farmBalance.mul(pricePerShare).div(1e18);
    }

    function getUserBunnyVaultBalance(address user, uint vid) public view returns (uint) {
        address userProxyContract = revault.userProxyContractAddress(user);
        (address vaultAddress,,) = revault.vaults(vid);
        uint balance = IBunnyVault(vaultAddress).balanceOf(userProxyContract);
        return balance;
    }

    function getUserAutoVaultBalance(address user, uint vid, uint pid) public view returns (uint) {
        address userProxyContract = revault.userProxyContractAddress(user);
        (address vaultAddress,,) = revault.vaults(vid);
        (uint shares,) = IAutoFarm(vaultAddress).userInfo(pid, userProxyContract);
        (,,,,address strategyAddress) = IAutoFarm(vaultAddress).poolInfo(pid);
        uint wantLockedTotal = IAutoFarmStratX(strategyAddress).wantLockedTotal();
        uint sharesTotal = IAutoFarmStratX(strategyAddress).sharesTotal();
        uint balance = shares.mul(wantLockedTotal).div(sharesTotal);
        return balance;
    }

    function getUserBeefyVaultBalance(address user, uint vid) public view returns (uint) {
        address userProxyContract = revault.userProxyContractAddress(user);
        (address vaultAddress,,) = revault.vaults(vid);
        uint balance = IBeefyVault(vaultAddress).balanceOf(userProxyContract);
        return balance;
    }

    function setVaultTypes(uint[] memory vids, uint8[] memory types) public onlyOwner {
        for (uint i = 0; i < vids.length; i++) {
            vaultTypes[vids[i]] = types[i];
        }
    }

    function setAutoPids(uint[] memory vids, uint[] memory pids) public onlyOwner {
        for (uint i = 0; i < vids.length; i++) {
            autofarmPids[vids[i]] = pids[i];
        }
    }
}