// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface ILOANStaking {

    // --- Events --
    
    event LOANTokenAddressSet(address _loanTokenAddress);
    event USDLTokenAddressSet(address _usdlTokenAddress);
    event VaultManagerAddressSet(address _vaultManager);
    event BorrowerOperationsAddressSet(address _borrowerOperationsAddress);
    event ActivePoolAddressSet(address _activePoolAddress);

    event StakeChanged(address indexed staker, uint newStake);
    event StakingGainsWithdrawn(address indexed staker, uint USDLGain, uint PLSGain);
    event F_PLSUpdated(uint _F_PLS);
    event F_USDLUpdated(uint _F_USDL);
    event TotalLOANStakedUpdated(uint _totalLOANStaked);
    event PulseSent(address _account, uint _amount);
    event StakerSnapshotsUpdated(address _staker, uint _F_PLS, uint _F_USDL);

    // --- Functions ---

    function setAddresses
    (
        address _loanTokenAddress,
        address _usdlTokenAddress,
        address _vaultManagerAddress, 
        address _borrowerOperationsAddress,
        address _activePoolAddress
    )  external;

    function stake(uint _LOANamount) external;

    function unstake(uint _LOANamount) external;

    function increaseF_PLS(uint _PLSFee) external; 

    function increaseF_USDL(uint _LOANFee) external;  

    function getPendingPLSGain(address _user) external view returns (uint);

    function getPendingUSDLGain(address _user) external view returns (uint);
}
// 2022 Liquid Loans