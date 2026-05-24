// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/CheckContract.sol";
import "../Dependencies/SafeMath.sol";
import "../Dependencies/Ownable.sol";
import "../Interfaces/ILockupContractFactory.sol";
import "./LockupContract.sol";
import "../Dependencies/console.sol";

/*
* The LockupContractFactory deploys LockupContracts - its main purpose is to keep a registry of valid deployed 
* LockupContracts. 
* 
* This registry is checked by LOANToken when the Liquid Loans deployer attempts to transfer LOAN tokens. During the first year 
* since system deployment, the Liquid Loans deployer is only allowed to transfer LOAN to valid LockupContracts that have been 
* deployed by and recorded in the LockupContractFactory. This ensures the deployer's LOAN can't be traded or staked in the
* first year, and can only be sent to a verified LockupContract which unlocks at least one year after system deployment.
*
* LockupContracts can of course be deployed directly, but only those deployed through and recorded in the LockupContractFactory 
* will be considered "valid" by LOANToken. This is a convenient way to verify that the target address is a genuine 
* LockupContract.
*/

contract LockupContractFactory is ILockupContractFactory, Ownable, CheckContract {
    using SafeMath for uint;

    // --- Data ---
    string constant public NAME = "LockupContractFactory";

    address public loanTokenAddress;
    
    mapping (address => address) public lockupContractToDeployer;

    // --- Events ---

    event LOANTokenAddressSet(address _loanTokenAddress);
    event LockupContractDeployedThroughFactory(address _lockupContractAddress, address _beneficiary, uint _unlockTime, address _deployer);

    // --- Functions ---

    function setLOANTokenAddress(address _loanTokenAddress) external override onlyOwner {
        checkContract(_loanTokenAddress);

        loanTokenAddress = _loanTokenAddress;
        emit LOANTokenAddressSet(_loanTokenAddress);

        _renounceOwnership();
    }

    function deployLockupContract(address _beneficiary, uint _unlockTime, LockupContract.LockupClass _lockupClass) external override returns (address) {
        address loanTokenAddressCached = loanTokenAddress;
        _requireLOANAddressIsSet(loanTokenAddressCached);
        LockupContract lockupContract = new LockupContract(
                                                        loanTokenAddressCached,
                                                        _beneficiary, 
                                                        _unlockTime,
                                                        _lockupClass);

        lockupContractToDeployer[address(lockupContract)] = msg.sender;
        emit LockupContractDeployedThroughFactory(address(lockupContract), _beneficiary, _unlockTime, msg.sender);
        return address(lockupContract);
    }

    function isRegisteredLockup(address _contractAddress) public view override returns (bool) {
        return lockupContractToDeployer[_contractAddress] != address(0);
    }

    // --- 'require'  functions ---
    function _requireLOANAddressIsSet(address _loanTokenAddress) internal pure {
        require(_loanTokenAddress != address(0), "LCF: LOAN Address is not set");
    }
}
// 2025 Liquid Loans