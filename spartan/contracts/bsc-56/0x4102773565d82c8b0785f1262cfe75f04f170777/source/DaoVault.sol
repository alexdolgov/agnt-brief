// File: @openzeppelin/contracts/security/ReentrancyGuard.sol



pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

// File: TransferHelper.sol


pragma solidity >=0.8.3;

library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferBNB(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: BNB_TRANSFER_FAILED');
    }
}
// File: iPOOLFACTORY.sol


pragma solidity 0.8.3;
interface iPOOLFACTORY {
    function isCuratedPool(address) external view returns (bool);
    function addCuratedPool(address) external;
    function removeCuratedPool(address) external;
    function isPool(address) external returns (bool);
    function getPool(address) external view returns(address);
    function getVaultAssets() external view returns(address [] memory);
    function curatedPoolCount() external view returns (uint);
}

// File: iRESERVE.sol


pragma solidity 0.8.3;
interface iRESERVE {
    function grantFunds(uint, address) external; 
    function emissions() external returns(bool); 
    function setGlobalFreeze(bool) external; 
    function setIncentiveAddresses(address, address, address, address) external;
    function globalFreeze() external returns(bool); 
    function freezeTime() external returns(uint256); 

}

// File: iROUTER.sol


pragma solidity 0.8.3;
interface iROUTER {
    function addLiquidityForMember(uint, uint, address, address) external payable returns (uint);
      function synthMinting() external view returns (bool);
}
// File: iUTILS.sol

//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.3;
interface iUTILS {
    function calcShare(uint, uint, uint) external pure returns (uint);
    function getFeeOnTransfer(uint256, uint256) external view returns(uint);
    function getPoolShareWeight(address, uint)external view returns(uint);
    function calcLiquidityUnits(uint, uint, uint, uint, uint) external pure returns (uint);
    function calcLiquidityHoldings(uint, address, address) external pure returns (uint);
    function calcSwapOutput(uint, uint, uint) external pure returns (uint);
    function calcSwapFee(uint, uint, uint) external pure returns (uint);
    function calcSwapValueInBase(address, uint) external view returns (uint);
    function calcSwapValueInToken(address, uint) external view returns (uint);
    function calcSpotValueInBaseWithSynth(address, uint) external view returns (uint);
    function calcSpotValueInBase(address, uint) external view returns (uint);
    function calcPart(uint, uint) external pure returns (uint);
    function calcLiquidityUnitsAsym(uint, address)external pure returns (uint);
    function calcActualSynthUnits(address, uint) external view returns (uint);
}
// File: iPOOL.sol


pragma solidity 0.8.3;
interface iPOOL {
    function TOKEN() external view returns(address);
    function genesis() external view returns(uint);
    function baseAmount() external view returns(uint);
    function tokenAmount() external view returns(uint);
    function sync() external;
    function SYNTH() external returns (address);
    function stirCauldron(address) external returns (uint); 
    function mintSynth( address) external returns (uint256, uint256);
    function synthCap() external view returns (uint);
    function baseCap() external view returns (uint);
}
// File: iBASE.sol


pragma solidity 0.8.3;

interface iBASE {
    function DAO() external view returns (iDAO);
    function secondsPerEra() external view returns (uint256);
    function changeDAO(address) external;
    function setParams(uint256, uint256) external;
    function flipEmissions() external;
    function mintFromDAO(uint256, address) external; 
    function burn(uint256) external; 
}
// File: iDAO.sol


pragma solidity 0.8.3;
interface iDAO {
    function ROUTER() external view returns(address);
    function BASE() external view returns(address);
    function LEND() external view returns(address);
    function UTILS() external view returns(address);
    function DAO() external view returns (address);
    function RESERVE() external view returns(address);
    function SYNTHVAULT() external view returns(address);
    function BONDVAULT() external view returns(address);
    function SYNTHFACTORY() external view returns(address);
    function POOLFACTORY() external view returns(address);
    function depositForMember(address pool, uint256 amount, address member) external;
    function currentProposal() external view returns (uint);
    function mapPID_open(uint) external view returns (bool);
    function isListed(address) external view returns (bool);
}
// File: iBEP20.sol


pragma solidity 0.8.3;
interface iBEP20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function burn(uint) external;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: DaoVault.sol


pragma solidity 0.8.3;











contract DaoVault is ReentrancyGuard {
    address public immutable BASE;  // SPARTA base contract address
    address public DEPLOYER;        // Address that deployed contract

    constructor(address _base) {
        BASE = _base;
        DEPLOYER = msg.sender;
    }

    mapping(address => uint256) public mapTotalPool_balance; // LP's locked in DAOVault (Global)
    mapping(address => mapping(address => uint256)) private mapMemberPool_balance; // Member's LPs locked in DAOVault (Member)
    mapping(address => mapping(address => uint256)) private mapMember_depositTime; // Timestamp when user last deposited

    // Restrict access
    modifier onlyDAO() {
        require(msg.sender == _DAO().DAO() || msg.sender == DEPLOYER, "!DAO");
        _;
    }

    // Can purge deployer once DAO is stable and final
    function purgeDeployer() external onlyDAO {
        DEPLOYER = address(0);
    }

    // Get DAO address from the Sparta base contract
    function _DAO() internal view returns (iDAO) {
        return iBASE(BASE).DAO();
    }

    // User deposits LP tokens in the DAOVault
    function depositLP(address pool, uint256 amount, address member) external onlyDAO returns (bool) {
        mapMemberPool_balance[member][pool] += amount; // Updated user's vault balance
        mapTotalPool_balance[pool] += amount; // Update total vault balance (global)
        mapMember_depositTime[member][pool] = block.timestamp; // Set user's new last-deposit-time
        return true;
    }

    // Get a member's and the vault's total weight (Just DAOVault)
    function getMemberLPWeight(address member) external onlyDAO returns (uint256 memberWeight, uint256 totalWeight) {
        require(iRESERVE(_DAO().RESERVE()).globalFreeze() != true, '!SAFE');
        address [] memory vaultAssets = iPOOLFACTORY(_DAO().POOLFACTORY()).getVaultAssets(); // Get list of vault-enabled assets
        for(uint i =0; i< vaultAssets.length; i++){
            memberWeight += iUTILS(_DAO().UTILS()).getPoolShareWeight(vaultAssets[i], mapMemberPool_balance[member][vaultAssets[i]]); // Get member's current total DAOVault weight
            totalWeight += iUTILS(_DAO().UTILS()).getPoolShareWeight(vaultAssets[i], mapTotalPool_balance[vaultAssets[i]]); // Get DaoVault's current total weight
        }
        return (memberWeight, totalWeight);
    }

    // Withdraw 100% of user's LPs from the DAOVault (1 asset type)
    function withdraw(address pool, address member) external onlyDAO nonReentrant returns (bool){
        require(block.timestamp > (mapMember_depositTime[member][pool] + 86400), '!unlocked'); // 1 day must have passed since last deposit (lockup period)
        uint256 _balance = mapMemberPool_balance[member][pool]; // Get user's whole DAOVault balance of the selected asset
        require(_balance > 0, "!balance"); // Withdraw amount must be valid
        mapTotalPool_balance[pool] -=_balance;//remove from total
        mapMemberPool_balance[member][pool] = 0; // Zero out user's DAOVault balance of the selected asset
        TransferHelper.safeTransfer(pool,member, _balance);
        return true;
    }

    // Get user's current balance of a chosen asset
    function getMemberPoolBalance(address pool, address member) external view returns (uint256){
        return mapMemberPool_balance[member][pool];
    }

    // Get user's last deposit time of a chosen asset
    function getMemberPoolDepositTime(address pool, address member) external view returns (uint256){
        return mapMember_depositTime[member][pool];
    }
}