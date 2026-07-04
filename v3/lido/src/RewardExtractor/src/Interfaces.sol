// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

interface IERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function deciamls() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface IStakingNFT {
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function approve(address to, uint256 tokenId) external;
    function getApproved(uint256 tokenId) external view returns (address operator);
    function setApprovalForAll(address operator, bool _approved) external;
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    function transferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external;
}

interface IValidatorShare {
    function buyVoucherPOL(uint256 amt, uint256 minSharesToMint) external;
    function exchangeRate() external view returns (uint256);
    function withdrawRewardsPOL() external;
    function withdrawRewards() external;
    function sellVoucherPOL(uint256, uint256) external;
    function unstakeClaimTokensPOL() external;
    function getLiquidRewards(address user) external view returns (uint256);
    function sellVoucher_newPOL(uint256, uint256) external;
    function unstakeClaimTokens_newPOL(uint256) external;
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
}

interface IStakeManager {
    function getValidatorContract(uint256 validatorId) external view returns (address);
    function token() external view returns (IERC20);
    function NFTContract() external view returns (IStakingNFT);
    function NFTCounter() external view returns (uint256);
}

interface ILegacyDelegationProxy {
    function callAny(address target, bytes memory data) external;
    function owner() external view returns (address);
    function stakeManager() external view returns (IStakeManager);
    function collectRewards(uint256[] memory validators) external;
    function withdrawTokens(address tokenAddress, uint256 amount) external;
    function transferOwnership(address newOwner) external;
    function getLiquidRewards(uint256 validatorId) external view returns (uint256);
}

interface IPolygonMigration {
    function migrate(uint256 amount) external;
    function unmigrate(uint256 amount) external;
    function unmigrateTo(address recipient, uint256 amount) external;
    function unmigrateWithPermit(uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
    function updateUnmigrationLock(bool unmigrationLocked) external;
    function burn(uint256 amount) external;
    function matic() external view returns (IERC20 maticToken);
    function polygon() external view returns (IERC20 polygonEcosystemToken);
    function unmigrationLocked() external view returns (bool isUnmigrationLocked);
    function version() external pure returns (string memory version);
}
