//SPDX-License-Identifier: Unlicense

pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";
import "../public/contracts/base/interface/IVault.sol";
import "../public/contracts/base/PotPool.sol";

contract Reader {

  function getAllInformation(address who, address[] memory vaults, address[] memory pools)
  public view returns (uint256[] memory, uint256[] memory, uint256[] memory) {
    return (unstakedBalances(who, vaults), stakedBalances(who, pools), vaultSharePrices(vaults));
  }

  function unstakedBalances(address who, address[] memory vaults) public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](vaults.length);
    for (uint256 i = 0; i < vaults.length; i++) {
      result[i] = BEP20(vaults[i]).balanceOf(who);
    }
    return result;
  }

  function stakedBalances(address who, address[] memory pools) public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](pools.length);
    for (uint256 i = 0; i < pools.length; i++) {
      result[i] = PotPool(pools[i]).balanceOf(who);
    }
    return result;
  }

  function underlyingBalances(address who, address[] memory vaults) public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](vaults.length);
    for (uint256 i = 0; i < vaults.length; i++) {
      result[i] = BEP20(IVault(vaults[i]).underlying()).balanceOf(who);
    }
    return result;
  }

  function vaultSharePrices(address[] memory vaults) public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](vaults.length);
    for (uint256 i = 0; i < vaults.length; i++) {
      result[i] = IVault(vaults[i]).getPricePerFullShare();
    }
    return result;
  }

  function underlyingBalanceWithInvestmentForHolder(address who, address[] memory vaults)
  public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](vaults.length);
    for (uint256 i = 0; i < vaults.length; i++) {
      result[i] = IVault(vaults[i]).underlyingBalanceWithInvestmentForHolder(who);
    }
    return result;
  }
}
