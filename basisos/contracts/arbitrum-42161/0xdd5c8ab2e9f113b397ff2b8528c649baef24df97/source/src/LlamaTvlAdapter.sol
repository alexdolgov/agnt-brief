// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC4626} from "forge-std/interfaces/IERC4626.sol";

interface IOracle {
    function getAssetPrice(address asset) external view returns (uint256);
    function convertTokenAmount(address from, address to, uint256 amount) external view returns (uint256);
}

contract LlamaTvlAdapter is Ownable {
    IOracle public oracle;
    address public immutable asset;
    address[] public vaults;
    mapping(address => bool) public activeVault;
    constructor(address _owner, address _oracle, address _asset) Ownable(_owner) {
        oracle = IOracle(_oracle);
        asset = _asset;
    }

    function setOracle(address _oracle) external onlyOwner {
        oracle = IOracle(_oracle);
    }

    function addVault(address _vault) external onlyOwner {
        vaults.push(_vault);
        activeVault[_vault] = true;
    }

    function removeVault(address _vault) external onlyOwner {
        activeVault[_vault] = false;
    }

    function getVaultTvl(address _vault) public view returns (uint256) {
        address vaultAsset = IERC4626(_vault).asset();
        uint256 totalAssets = IERC4626(_vault).totalAssets();
        if (vaultAsset == asset) {
            return totalAssets;
        } else {
            return oracle.convertTokenAmount(vaultAsset, asset, totalAssets);
        }
    }

    function getTotalTvl() external view returns (uint256) {
        uint256 totalTvl;
        for (uint256 i = 0; i < vaults.length; i++) {
            if (activeVault[vaults[i]]) {
                totalTvl += getVaultTvl(vaults[i]);
            }
        }
        return totalTvl;
    }

    function getAllVaults() external view returns (address[] memory) {
        return vaults;
    }
    
    
}