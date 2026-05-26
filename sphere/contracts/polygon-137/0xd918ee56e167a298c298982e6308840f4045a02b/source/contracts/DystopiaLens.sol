// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./interfaces/IDystopiaLens.sol";
import "./interfaces/IVe.sol";
import "./interfaces/IBribe.sol";
import "./interfaces/IVoter.sol";
import "./interfaces/IController.sol";
import "./interfaces/IDystPool.sol";
import "./interfaces/IDyst.sol";
import "./ProxyImplementation.sol";
import "./libraries/Math.sol";

/**************************************************
 *                   Interfaces
 **************************************************/

interface IMinter {
    function veDist() external view returns (address);
}

interface IERC20 {
    function decimals() external view returns (uint8);
}

/**************************************************
 *                 Core contract
 **************************************************/
contract DystopiaLens is ProxyImplementation {
    address public veAddress;
    address public ownerAddress;

    // Internal interfaces
    IVoter internal voter;
    IController internal controller;
    IMinter internal minter;
    IVe internal ve;
    IDyst internal dyst;

    /**************************************************
     *                   Structs
     **************************************************/
    struct Pool {
        address id;
        string symbol;
        bool stable;
        address token0Address;
        address token1Address;
        address gaugeAddress;
        address bribeAddress;
        address[] bribeTokensAddresses;
        address fees;
        uint256 totalSupply;
    }

    struct ProtocolMetadata {
        address veAddress;
        address dystAddress;
        address voterAddress;
        address poolsFactoryAddress;
        address gaugesFactoryAddress;
        address minterAddress;
    }

    /**************************************************
     *                   Configuration
     **************************************************/

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(address _veAddress)
        public
        checkProxyInitialized
    {
        veAddress = _veAddress;
        ownerAddress = msg.sender;
        ve = IVe(veAddress);
        dyst = IDyst(ve.token());
        controller = IController(ve.controller());
        voter = IVoter(controller.voter());
        minter = IMinter(dyst.minter());
    }

    function setVeAddress(address _veAddress) external {
        require(msg.sender == ownerAddress, "Only owner");
        veAddress = _veAddress;
    }

    function setOwnerAddress(address _ownerAddress) external {
        require(msg.sender == ownerAddress, "Only owner");
        ownerAddress = _ownerAddress;
    }

    /**************************************************
     *                 Protocol addresses
     **************************************************/
    function voterAddress() public view returns (address) {
        return controller.voter();
    }

    function poolsFactoryAddress() public view returns (address) {
        return voter.factory();
    }

    function gaugesFactoryAddress() public view returns (address) {
        return voter.gaugeFactory();
    }

    function dystAddress() public view returns (address) {
        return ve.token();
    }

    function routerAddress() public view returns (address) {
        return dyst.router();
    }

    function veDistAddress() public view returns (address) {
        return controller.veDist();
    }

    function minterAddress() public view returns (address) {
        return dyst.minter();
    }

    /**************************************************
     *                  Protocol data
     **************************************************/
    function protocolMetadata()
        external
        view
        returns (ProtocolMetadata memory)
    {
        return
            ProtocolMetadata({
                veAddress: veAddress,
                voterAddress: voterAddress(),
                dystAddress: dystAddress(),
                poolsFactoryAddress: poolsFactoryAddress(),
                gaugesFactoryAddress: gaugesFactoryAddress(),
                minterAddress: minterAddress()
            });
    }

    function poolsLength() public view returns (uint256) {
        return voter.poolsLength();
    }

    function poolsAddresses() public view returns (address[] memory) {
        uint256 _poolsLength = poolsLength();
        address[] memory _poolsAddresses = new address[](_poolsLength);
        for (uint256 poolIndex; poolIndex < _poolsLength; poolIndex++) {
            address poolAddress = voter.pools(poolIndex);
            _poolsAddresses[poolIndex] = poolAddress;
        }
        return _poolsAddresses;
    }

    function poolInfo(address poolAddress)
        public
        view
        returns (IDystopiaLens.Pool memory)
    {
        IDystPool pool = IDystPool(poolAddress);
        address token0Address = pool.token0();
        address token1Address = pool.token1();
        address gaugeAddress = voter.gauges(poolAddress);
        address bribeAddress = voter.bribes(gaugeAddress);
        address[]
            memory _bribeTokensAddresses = bribeTokensAddressesByBribeAddress(
                bribeAddress
            );
        uint256 totalSupply = pool.totalSupply();
        if (_bribeTokensAddresses.length < 2) {
            _bribeTokensAddresses = new address[](2);
            _bribeTokensAddresses[0] = token0Address;
            _bribeTokensAddresses[1] = token1Address;
        }
        return
            IDystopiaLens.Pool({
                id: poolAddress,
                symbol: pool.symbol(),
                stable: pool.stable(),
                token0Address: token0Address,
                token1Address: token1Address,
                gaugeAddress: gaugeAddress,
                bribeAddress: bribeAddress,
                bribeTokensAddresses: _bribeTokensAddresses,
                fees: pool.fees(),
                totalSupply: totalSupply
            });
    }

    function poolsInfo() external view returns (IDystopiaLens.Pool[] memory) {
        address[] memory _poolsAddresses = poolsAddresses();
        IDystopiaLens.Pool[] memory pools = new IDystopiaLens.Pool[](
            _poolsAddresses.length
        );
        for (
            uint256 poolIndex;
            poolIndex < _poolsAddresses.length;
            poolIndex++
        ) {
            address poolAddress = _poolsAddresses[poolIndex];
            IDystopiaLens.Pool memory _poolInfo = poolInfo(poolAddress);
            pools[poolIndex] = _poolInfo;
        }
        return pools;
    }

    function poolReservesInfo(address poolAddress)
        public
        view
        returns (IDystopiaLens.PoolReserveData memory)
    {
        IDystPool pool = IDystPool(poolAddress);
        address token0Address = pool.token0();
        address token1Address = pool.token1();
        (uint256 token0Reserve, uint256 token1Reserve, ) = pool.getReserves();
        uint8 token0Decimals = IERC20(token0Address).decimals();
        uint8 token1Decimals = IERC20(token1Address).decimals();
        return
            IDystopiaLens.PoolReserveData({
                id: poolAddress,
                token0Address: token0Address,
                token1Address: token1Address,
                token0Reserve: token0Reserve,
                token1Reserve: token1Reserve,
                token0Decimals: token0Decimals,
                token1Decimals: token1Decimals
            });
    }

    function poolsReservesInfo(address[] memory _poolsAddresses)
        external
        view
        returns (IDystopiaLens.PoolReserveData[] memory)
    {
        IDystopiaLens.PoolReserveData[]
            memory _poolsReservesInfo = new IDystopiaLens.PoolReserveData[](
                _poolsAddresses.length
            );
        for (
            uint256 poolIndex;
            poolIndex < _poolsAddresses.length;
            poolIndex++
        ) {
            address poolAddress = _poolsAddresses[poolIndex];
            _poolsReservesInfo[poolIndex] = poolReservesInfo(poolAddress);
        }
        return _poolsReservesInfo;
    }

    function gaugesAddresses() public view returns (address[] memory) {
        address[] memory _poolsAddresses = poolsAddresses();
        address[] memory _gaugesAddresses = new address[](
            _poolsAddresses.length
        );
        for (
            uint256 poolIndex;
            poolIndex < _poolsAddresses.length;
            poolIndex++
        ) {
            address poolAddress = _poolsAddresses[poolIndex];
            address gaugeAddress = voter.gauges(poolAddress);
            _gaugesAddresses[poolIndex] = gaugeAddress;
        }
        return _gaugesAddresses;
    }

    function bribesAddresses() public view returns (address[] memory) {
        address[] memory _gaugesAddresses = gaugesAddresses();
        address[] memory _bribesAddresses = new address[](
            _gaugesAddresses.length
        );
        for (uint256 gaugeIdx; gaugeIdx < _gaugesAddresses.length; gaugeIdx++) {
            address gaugeAddress = _gaugesAddresses[gaugeIdx];
            address bribeAddress = voter.bribes(gaugeAddress);
            _bribesAddresses[gaugeIdx] = bribeAddress;
        }
        return _bribesAddresses;
    }

    function bribeTokensAddressesByBribeAddress(address bribeAddress)
        public
        view
        returns (address[] memory)
    {
        uint256 bribeTokensLength = IBribe(bribeAddress).rewardTokensLength();
        address[] memory _bribeTokensAddresses = new address[](
            bribeTokensLength
        );
        for (
            uint256 bribeTokenIdx;
            bribeTokenIdx < bribeTokensLength;
            bribeTokenIdx++
        ) {
            address bribeTokenAddress = IBribe(bribeAddress).rewardTokens(
                bribeTokenIdx
            );
            _bribeTokensAddresses[bribeTokenIdx] = bribeTokenAddress;
        }
        return _bribeTokensAddresses;
    }

    function poolsPositionsOf(
        address accountAddress,
        uint256 startIndex,
        uint256 endIndex
    ) public view returns (IDystopiaLens.PositionPool[] memory) {
        uint256 _poolsLength = poolsLength();
        IDystopiaLens.PositionPool[]
            memory _poolsPositionsOf = new IDystopiaLens.PositionPool[](
                _poolsLength
            );
        uint256 positionsLength;
        endIndex = Math.min(endIndex, _poolsLength);
        for (
            uint256 poolIndex = startIndex;
            poolIndex < endIndex;
            poolIndex++
        ) {
            address poolAddress = voter.pools(poolIndex);
            uint256 balanceOf = IDystPool(poolAddress).balanceOf(
                accountAddress
            );
            if (balanceOf > 0) {
                _poolsPositionsOf[positionsLength] = IDystopiaLens.PositionPool({
                    id: poolAddress,
                    balanceOf: balanceOf
                });
                positionsLength++;
            }
        }

        bytes memory encodedPositions = abi.encode(_poolsPositionsOf);
        assembly {
            mstore(add(encodedPositions, 0x40), positionsLength)
        }
        return abi.decode(encodedPositions, (IDystopiaLens.PositionPool[]));
    }

    function poolsPositionsOf(address accountAddress)
        public
        view
        returns (IDystopiaLens.PositionPool[] memory)
    {
        uint256 _poolsLength = poolsLength();
        IDystopiaLens.PositionPool[]
            memory _poolsPositionsOf = new IDystopiaLens.PositionPool[](
                _poolsLength
            );

        uint256 positionsLength;

        for (uint256 poolIndex; poolIndex < _poolsLength; poolIndex++) {
            address poolAddress = voter.pools(poolIndex);
            uint256 balanceOf = IDystPool(poolAddress).balanceOf(
                accountAddress
            );
            if (balanceOf > 0) {
                _poolsPositionsOf[positionsLength] = IDystopiaLens.PositionPool({
                    id: poolAddress,
                    balanceOf: balanceOf
                });
                positionsLength++;
            }
        }

        bytes memory encodedPositions = abi.encode(_poolsPositionsOf);
        assembly {
            mstore(add(encodedPositions, 0x40), positionsLength)
        }
        return abi.decode(encodedPositions, (IDystopiaLens.PositionPool[]));
    }

    function veTokensIdsOf(address accountAddress)
        public
        view
        returns (uint256[] memory)
    {
        uint256 veBalanceOf = ve.balanceOf(accountAddress);
        uint256[] memory _veTokensOf = new uint256[](veBalanceOf);

        for (uint256 tokenIdx; tokenIdx < veBalanceOf; tokenIdx++) {
            uint256 tokenId = ve.tokenOfOwnerByIndex(accountAddress, tokenIdx);
            _veTokensOf[tokenIdx] = tokenId;
        }
        return _veTokensOf;
    }

    function gaugeAddressByPoolAddress(address poolAddress)
        external
        view
        returns (address)
    {
        return voter.gauges(poolAddress);
    }

    function bribeAddresByPoolAddress(address poolAddress)
        public
        view
        returns (address)
    {
        address gaugeAddress = voter.gauges(poolAddress);
        address bribeAddress = voter.bribes(gaugeAddress);
        return bribeAddress;
    }

    function bribeTokensAddressesByPoolAddress(address poolAddress)
        public
        view
        returns (address[] memory)
    {
        address bribeAddress = bribeAddresByPoolAddress(poolAddress);
        return bribeTokensAddressesByBribeAddress(bribeAddress);
    }

    function bribesPositionsOf(
        address accountAddress,
        address poolAddress,
        uint256 tokenId
    ) public view returns (IDystopiaLens.PositionBribe[] memory) {
        address bribeAddress = bribeAddresByPoolAddress(poolAddress);
        address[]
            memory bribeTokensAddresses = bribeTokensAddressesByBribeAddress(
                bribeAddress
            );
        IDystopiaLens.PositionBribe[]
            memory _bribesPositionsOf = new IDystopiaLens.PositionBribe[](
                bribeTokensAddresses.length
            );
        uint256 currentIdx;
        for (
            uint256 bribeTokenIdx;
            bribeTokenIdx < bribeTokensAddresses.length;
            bribeTokenIdx++
        ) {
            address bribeTokenAddress = bribeTokensAddresses[bribeTokenIdx];
            uint256 earned = IBribe(bribeAddress).earned(
                bribeTokenAddress,
                tokenId
            );
            if (earned > 0) {
                _bribesPositionsOf[currentIdx] = IDystopiaLens.PositionBribe({
                    bribeTokenAddress: bribeTokenAddress,
                    earned: earned
                });
                currentIdx++;
            }
        }
        bytes memory encodedBribes = abi.encode(_bribesPositionsOf);
        assembly {
            mstore(add(encodedBribes, 0x40), currentIdx)
        }
        IDystopiaLens.PositionBribe[] memory filteredBribes = abi.decode(
            encodedBribes,
            (IDystopiaLens.PositionBribe[])
        );
        return filteredBribes;
    }

    function bribesPositionsOf(address accountAddress, address poolAddress)
        public
        view
        returns (IDystopiaLens.PositionBribesByTokenId[] memory)
    {
        address bribeAddress = bribeAddresByPoolAddress(poolAddress);
        address[]
            memory bribeTokensAddresses = bribeTokensAddressesByBribeAddress(
                bribeAddress
            );

        uint256[] memory veTokensIds = veTokensIdsOf(accountAddress);
        IDystopiaLens.PositionBribesByTokenId[]
            memory _bribePositionsOf = new IDystopiaLens.PositionBribesByTokenId[](
                veTokensIds.length
            );

        uint256 currentIdx;
        for (
            uint256 veTokenIdIdx;
            veTokenIdIdx < veTokensIds.length;
            veTokenIdIdx++
        ) {
            uint256 tokenId = veTokensIds[veTokenIdIdx];
            _bribePositionsOf[currentIdx] = IDystopiaLens
                .PositionBribesByTokenId({
                    tokenId: tokenId,
                    bribes: bribesPositionsOf(
                        accountAddress,
                        poolAddress,
                        tokenId
                    )
                });
            currentIdx++;
        }
        return _bribePositionsOf;
    }

    function vePositionsOf(address accountAddress)
        public
        view
        returns (IDystopiaLens.PositionVe[] memory)
    {
        uint256 veBalanceOf = ve.balanceOf(accountAddress);
        IDystopiaLens.PositionVe[]
            memory _vePositionsOf = new IDystopiaLens.PositionVe[](veBalanceOf);

        for (uint256 tokenIdx; tokenIdx < veBalanceOf; tokenIdx++) {
            uint256 tokenId = ve.tokenOfOwnerByIndex(accountAddress, tokenIdx);
            uint256 balanceOf = ve.balanceOfNFT(tokenId);
            uint256 locked = ve.locked(tokenId);
            _vePositionsOf[tokenIdx] = IDystopiaLens.PositionVe({
                tokenId: tokenId,
                balanceOf: balanceOf,
                locked: locked
            });
        }
        return _vePositionsOf;
    }
}