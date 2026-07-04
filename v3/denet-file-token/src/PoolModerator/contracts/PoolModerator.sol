// SPDX-License-Identifier: MIT

/**
    This contract allows manage pools:
    1. setFee - new fee for pool
    2. discountTX - make tx with lower fee

    Owner in future must be changed to consensus
*/

pragma solidity ^0.8.10;

// Default Ownable
import "@openzeppelin/contracts/access/Ownable.sol";

// Balancer Vault
import "@balancer-labs/v2-interfaces/contracts/vault/IVault.sol";


contract PoolModerator is Ownable {

    mapping (uint => bytes32) public moderatedPools;
    mapping (bytes32 => uint256) public lastFee;
    mapping (address => bool) public verifiedContract;
    address constant private balancerVaultAddress = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;

    uint poolsCount = 0;

    function addToModerate(bytes32 poolId) public onlyOwner {
        require(lastFee[poolId] == 0, "Sorry, pool exist");
        moderatedPools[poolsCount] = poolId;
        poolsCount++;
        lastFee[poolId] = 1;
    }

    function setFee(bytes32 poolId, uint256 fee) public onlyOwner {
        require(lastFee[poolId] == 0, "Pool does not exist");
        IVault balancerVault = IVault(balancerVaultAddress);
        (address poolAddress, ) = balancerVault.getPool(poolId);
        IProtocolFeesCollector SwapPool = IProtocolFeesCollector(poolAddress);
        SwapPool.setSwapFeePercentage(fee);
        lastFee[poolId] = fee;
    }

    function discountTX(bytes32 poolId, uint tempFee, address to, bytes calldata data) public onlyOwner{
        require(lastFee[poolId] == 0, "discountTX: Pool does not exist");
        uint generalFee = lastFee[poolId];
        setFee(poolId, tempFee);
        require(verifiedContract[to] == true, "discountTX: contract not verified");
        (bool success, ) = to.call(data);
        require(success, "discountTX: external tx execution failed");
        setFee(poolId, generalFee);
    }

    function verifyContract(address to) public onlyOwner {
        verifiedContract[to] = true;
    }

    function unverifyContract(address to) public onlyOwner {
        verifiedContract[to] = false;
    }
}