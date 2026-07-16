// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IOrbs {
    error SoulboundToken();
    error CooldownActive();
    error NotAuthorized();

    function mint(address to, uint256 id, uint256 amount, bytes memory data) external;
    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) external;
    function burn(address from, uint256 id, uint256 amount) external;
    function burnBatch(address from, uint256[] memory ids, uint256[] memory amounts) external;
    function setUserTierCooldown(address user, uint256 tier, uint256 cooldownUntil) external;

    function tierCooldowns(address user, uint256 tier) external view returns (uint256);
    function getOrbCounts(address user) external view returns (uint256[] memory counts);
    function balanceOf(address account, uint256 id) external view returns (uint256);
    function totalSupply(uint256 id) external view returns (uint256);
    function totalSupply() external view returns (uint256);
}
