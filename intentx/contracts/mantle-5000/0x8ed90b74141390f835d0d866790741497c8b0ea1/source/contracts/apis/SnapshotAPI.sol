// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.18;

interface IStakedINTX {
    function amountStakedOf(uint tokenId) external view returns ( uint amount) ;
}
interface IVesting {
    function claimableAmount(address _user) external view returns ( uint amount) ;
    function claimedAmount(address _user) external view returns ( uint amount) ;
}

contract SnapshotAPI {

	address public constant xINTX = 0x2554727881c5fB22965c6fcB7C6042b367845362;
	IVesting public constant idoContract = IVesting(0x2554727881c5fB22965c6fcB7C6042b367845362);
    
    function checkINTXBalanceOfTokenIds(uint[][] calldata tokenIds_ ) external view returns (uint[] memory intxBalances ){
        uint len = tokenIds_.length;
        IStakedINTX xintx = IStakedINTX(xINTX);

        intxBalances = new uint[](len);

        uint len2;
        uint _tokenId;
        uint balance;

        for ( uint i = 0; i < len; i += 1) {
            len2 = tokenIds_[i].length;
            balance = 0;

            for ( uint j = 0; j < len; j += 1) {
                _tokenId = tokenIds_[i][j];
                balance += xintx.amountStakedOf(_tokenId);
            }
            intxBalances[i] = balance;
        }

    }

    function checkSnapshotBalanceINTX(address[] calldata users_ ) external view returns (uint[] memory ){
        uint len = users_.length;

        uint[] memory snapshotBalance = new uint[](len);

        address _user;
        uint claimable;
        uint claimed;

        for ( uint i = 0; i < len; i =  i+1) {
            _user = users_[i];
            claimable = idoContract.claimableAmount(_user);
            claimed = idoContract.claimedAmount(_user);

            snapshotBalance[i] = claimable-claimed;
        }

        return snapshotBalance;

    }

}