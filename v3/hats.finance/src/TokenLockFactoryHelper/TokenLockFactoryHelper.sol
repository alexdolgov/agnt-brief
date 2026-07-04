// SPDX-License-Identifier: MIT

pragma solidity 0.8.6;


interface ITokenLockFactory {
  
    enum Revocability { NotSet, Enabled, Disabled }
    function createTokenLock(
        address _token,
        address _owner,
        address _beneficiary,
        uint256 _managedAmount,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _periods,
        uint256 _releaseStartTime,
        uint256 _vestingCliffTime,
        Revocability _revocable,
        bool _canDelegate
    ) external returns(address contractAddress);
}

contract TokenLockFactoryHelper {
    
    ITokenLockFactory public  tokenLockFactory;
    
    constructor(ITokenLockFactory _tokenLockFactory) {
        tokenLockFactory = _tokenLockFactory;
    }


    function createTokenLocks(
        address _token,
        address _owner,
        address[] memory _beneficiaries,
        uint256[] memory _managedAmounts,
        uint256[] memory _startTimes,
        uint256[] memory _endTimes,
        uint256[] memory _periods,
        ITokenLockFactory.Revocability[] memory _revocables,
        bool[] memory _canDelegates
    ) external {
        // Create contract using a minimal proxy and call initializer
        uint256 i;
        for (i= 0;i< _beneficiaries.length;i++) {
            tokenLockFactory.createTokenLock(_token,
                                              _owner,
                                              _beneficiaries[i],
                                              _managedAmounts[i],
                                              _startTimes[i],
                                              _endTimes[i],
                                              _periods[i],
                                              0,
                                              0,
                                              _revocables[i],
                                              _canDelegates[i]);
        }
        
    }
}
