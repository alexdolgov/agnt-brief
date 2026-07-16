// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./interfaces/IPair.sol";
import "./interfaces/IPosition.sol";
import "./interfaces/ISwapFactory.sol";
import "./interfaces/IWETH.sol";
import "./libraries/TransferHelper.sol";
import "./utils/PositionErrors.sol";
import "@openzeppelin-v4/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin-v4/contracts/utils/Strings.sol";

/// @title NFT positions
/// @notice Wraps positions in ERC721
contract Position is IPosition, ERC721 {
    address public immutable factory;
    address public immutable WETH;
    address public immutable protocolToken;

    //using Counters for Counters.Counter;
    uint256 private _positionIds;

    mapping(uint256 => Position) public positions;

    modifier ensure(uint256 deadline) {
        if (deadline < block.timestamp) revert Expired();
        _;
    }

    modifier isOwner(uint256 positionId) {
        // ownerOf will revert if positionId isn't a position owned
        if (msg.sender != ownerOf(positionId)) revert NotOwner();
        _;
    }

    modifier isOwnerOrAllowed(uint256 positionId) {
        // check if sender is owner or delegate, used to claim dividends
        if (
            msg.sender != ownerOf(positionId)
                && msg.sender != positions[positionId].delegate
        ) revert NotAllowed();
        _;
    }

    constructor(address _factory, address _WETH, address _protocolToken)
        ERC721("Bundles Positions", "BPOS")
    {
        require(_factory != address(0), "NULL_FACTORY_ADDRESS");
        require(_WETH != address(0), "NULL_WETH_ADDRESS");
        require(_protocolToken != address(0), "NULL_PROTOCOL_TOKEN_ADDRESS");
        factory = _factory;
        WETH = _WETH;
        protocolToken = _protocolToken;
    }

    receive() external payable {
        assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
    }

    /// @notice Create a position in a Pair. Create an NFT for this position
    /// @param tokenA Token of the Pair
    /// @param tokenB Token of the Pair
    /// @param fee Associated fee to the Pair
    /// @param amountADesired tokenA amount to be added as liquidity
    /// @param amountBDesired tokenB amount to be added as liquidity
    /// @param amountAMin Minimum tokenA amount to be added as liquidity
    /// @param amountBMin Minimum tokenB amount to be added as liquidity
    /// @param to The address to be used to mint the NFT position
    /// @param deadline Unix timestamp after which the transaction will revert
    /// @return amountA tokenA amount added to the Pair as liquidity
    /// @return amountB tokenB amount added to the Pair as liquidity
    /// @return liquidity Liquidity minted
    function createPosition(
        address tokenA,
        address tokenB,
        uint16 fee,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        virtual
        ensure(deadline)
        returns (uint256 amountA, uint256 amountB, uint256 liquidity)
    {
        address pair = pairFor(tokenA, tokenB, fee);
        ++_positionIds;
        positions[_positionIds] = Position(pair, address(0), false, 0, 0);

        (amountA, amountB) = _addLiquidity(
            tokenA,
            tokenB,
            fee,
            amountADesired,
            amountBDesired,
            amountAMin,
            amountBMin
        );

        TransferHelper.safeTransferFrom(tokenA, msg.sender, pair, amountA);
        TransferHelper.safeTransferFrom(tokenB, msg.sender, pair, amountB);

        liquidity = IPair(pair).mint(address(this), _positionIds);

        _safeMint(to, _positionIds);
        emit Create(to, _positionIds, pair, amountA, amountB, liquidity);
    }

    /// @notice Create a position in an Pair using WETH. Create an NFT for this position
    /// @param token Token of the Pair
    /// @param fee associated fee to the Pair
    /// @param amountTokenDesired token amount to be added as liquidity
    /// @param amountTokenMin Minimum token amount to be added as liquidity
    /// @param amountETHMin Minimum ETH amount to be added as liquidity
    /// @param to The address to be used to mint the NFT position
    /// @param deadline Unix timestamp after which the transaction will revert
    /// @return amountToken token amount added to the Pair as liquidity
    /// @return amountETH ETH amount added to the Pair as liquidity
    /// @return liquidity Liquidity minted
    function createPositionETH(
        address token,
        uint16 fee,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        ensure(deadline)
        returns (uint256 amountToken, uint256 amountETH, uint256 liquidity)
    {
        ++_positionIds;
        address pair = pairFor(token, WETH, fee);
        positions[_positionIds] = Position(pair, address(0), false, 0, 0);

        (amountToken, amountETH) = _addLiquidity(
            token,
            WETH,
            fee,
            amountTokenDesired,
            msg.value,
            amountTokenMin,
            amountETHMin
        );

        TransferHelper.safeTransferFrom(token, msg.sender, pair, amountToken);
        IWETH(WETH).deposit{value: amountETH}();
        assert(IWETH(WETH).transfer(pair, amountETH));

        liquidity = IPair(pair).mint(address(this), _positionIds);

        _safeMint(to, _positionIds);

        // refund dust ETH, if any
        if (msg.value > amountETH) {
            TransferHelper.safeTransferETH(msg.sender, msg.value - amountETH);
        }

        emit Create(to, _positionIds, pair, amountToken, amountETH, liquidity);
    }

    /// @notice Increase liquidity for an existing position
    /// @param params Predefined parameters struct
    // @param tokenA Base token from the Pair
    // @param tokenB Quote token from the Pair
    // @param fee Associated fee to the Pair
    // @param amountADesired tokenA amount to be added as liquidity
    // @param amountBDesired tokenB amount to be added as liquidity
    // @param amountAMin Minimum tokenA amount to be added as liquidity
    // @param amountBMin Minimum tokenB amount to be added as liquidity
    // @param deadline Unix timestamp after which the transaction will revert
    // @param positionId position ID
    /// @return amountA tokenA amount added to the Pair as liquidity
    /// @return amountB tokenB amount added to the Pair as liquidity
    /// @return liquidity Liquidity minted
    function increasePosition(IncreasePositionParams calldata params)
        external
        virtual
        isOwnerOrAllowed(params.positionId)
        ensure(params.deadline)
        returns (uint256 amountA, uint256 amountB, uint256 liquidity)
    {
        (amountA, amountB) = _addLiquidity(
            params.tokenA,
            params.tokenB,
            params.fee,
            params.amountADesired,
            params.amountBDesired,
            params.amountAMin,
            params.amountBMin
        );

        address pair = pairFor(params.tokenA, params.tokenB, params.fee);

        TransferHelper.safeTransferFrom(
            params.tokenA, msg.sender, pair, amountA
        );
        TransferHelper.safeTransferFrom(
            params.tokenB, msg.sender, pair, amountB
        );

        liquidity = IPair(pair).mint(address(this), params.positionId);

        emit Increase(
            ownerOf(params.positionId),
            params.positionId,
            pair,
            amountA,
            amountB,
            liquidity
        );
    }

    /// @notice Increase liquidity for an existing position for an ETH Pair
    /// @param params Predefined parameters struct
    // @param token Token from the Pair
    // @param fee Associated fee to the Pair
    // @param amountTokenDesired Token amount to be added as liquidity
    // @param amountTokenMin Minimum token amount to be added as liquidity
    // @param amountETHMin Minimum ETH amount to be added as liquidity
    // @param deadline Unix timestamp after which the transaction will revert
    // @param positionId Position ID
    /// @return amountToken Token amount added to the Pair as liquidity
    /// @return amountETH ETH amount added to the Pair as liquidity
    /// @return liquidity Liquidity minted
    function increasePositionETH(IncreasePositionETHParams calldata params)
        external
        payable
        virtual
        isOwnerOrAllowed(params.positionId)
        ensure(params.deadline)
        returns (uint256 amountToken, uint256 amountETH, uint256 liquidity)
    {
        (amountToken, amountETH) = _addLiquidity(
            params.token,
            WETH,
            params.fee,
            params.amountTokenDesired,
            msg.value,
            params.amountTokenMin,
            params.amountETHMin
        );

        address pair = pairFor(params.token, WETH, params.fee);

        TransferHelper.safeTransferFrom(
            params.token, msg.sender, pair, amountToken
        );
        IWETH(WETH).deposit{value: amountETH}();
        assert(IWETH(WETH).transfer(pair, amountETH));

        liquidity = IPair(pair).mint(address(this), params.positionId);
        // refund dust ETH, if any
        if (msg.value > amountETH) {
            TransferHelper.safeTransferETH(msg.sender, msg.value - amountETH);
        }

        emit Increase(
            ownerOf(params.positionId),
            params.positionId,
            pair,
            amountToken,
            amountETH,
            liquidity
        );
    }

    /// @notice Enable lock option for a position
    /// @param positionId Position ID to enable lock
    /// @param deadline Unix timestamp after which the transaction will revert
    function enableLock(uint256 positionId, uint256 deadline)
        external
        virtual
        isOwner(positionId)
        ensure(deadline)
    {
        if (positions[positionId].enableLock) revert AlreadyAllowed();
        positions[positionId].enableLock = true;
    }

    /// @notice Disable lock option for a position
    /// @param positionId Position ID to enable lock
    /// @param deadline Unix timestamp after which the transaction will revert
    function disableLock(uint256 positionId, uint256 deadline)
        external
        virtual
        isOwner(positionId)
        ensure(deadline)
    {
        if (!positions[positionId].enableLock) revert AlreadyDisallowed();
        if (positions[positionId].lock > block.timestamp) {
            revert LockedLiquidity();
        }
        positions[positionId].enableLock = false;
    }

    /// @notice Lock a position for a custom period
    /// @param locktime Timestamp until liquidity is locked
    /// @param positionId Position ID to enable lock
    /// @param deadline Unix timestamp after which the transaction will revert
    function lockPosition(uint32 locktime, uint256 positionId, uint256 deadline)
        external
        virtual
        isOwner(positionId)
        ensure(deadline)
    {
        if (!positions[positionId].enableLock) revert LockNotAllowed();
        if (
            locktime <= block.timestamp
                || locktime <= positions[positionId].lock
        ) revert WrongLocktime();
        positions[positionId].lock = locktime;

        emit Lock(msg.sender, positionId, positions[positionId].pair, locktime);
    }

    /// @notice Burn a position NFT if it has no liquidity nor claimable dividends
    /// @param positionId Owner postion ID to burn
    function burn(uint256 positionId) external isOwner(positionId) {
        IPair pair = IPair(positions[positionId].pair);
        if (pair.getPositionLP(address(this), positionId) != 0) {
            revert LiquidityToClaim();
        }
        if (pair.claimableDividends(address(this), positionId) != 0) {
            revert DividendsToClaim();
        }
        emit Burn(msg.sender, positionId);
        _burn(positionId);
    }

    /// @notice Claim dividends for multiple positions
    /// @param positionIds Owner position IDs array to claim
    /// @return claimedAmount Claimed amount from positions given
    function claimDividendGrouped(uint256[] calldata positionIds)
        external
        returns (uint256 claimedAmount)
    {
        uint256 positionsLength = positionIds.length;
        for (uint256 i; i < positionsLength; ++i) {
            claimedAmount = claimedAmount + claimDividend(positionIds[i]);
        }
    }

    function setDelegate(uint256 positionId, address delegate)
        public
        isOwner(positionId)
    {
        positions[positionId].delegate = delegate;
    }

    function setDelegates(uint256[] calldata positionIds, address delegate)
        external
    {
        uint256 numPositions = positionIds.length;

        for (uint256 i; i < numPositions; ++i) {
            setDelegate(positionIds[i], delegate);
        }
    }

    function getPositionsDetails(uint256[] calldata positionIds)
        external
        view
        returns (PositionDetails[] memory)
    {
        PositionDetails[] memory positionsDetails =
            new PositionDetails[](positionIds.length);
        for (uint256 i; i < positionIds.length; ++i) {
            positionsDetails[i] = getPositionDetails(positionIds[i]);
        }

        return positionsDetails;
    }

    function getPositionDetails(uint256 positionId)
        public
        view
        returns (PositionDetails memory positionDetails)
    {
        Position memory position = positions[positionId];
        IPair pair = IPair(position.pair);

        uint256 lp = pair.getPositionLP(address(this), positionId);
        (uint256 reserve0, uint256 reserve1,) = pair.getReserves();

        uint256 positionReserve0 = (lp * reserve0) / pair.totalSupply();
        uint256 positionReserve1 = (lp * reserve1) / pair.totalSupply();

        positionDetails = PositionDetails(
            positionId, // uint256 id;
            ownerOf(positionId), // address owner;
            position.delegate, // address delegate;
            position.pair, // address pair;
            pair.token0(), // address token0;
            pair.token1(), // address token1;
            lp, // uint256 lp;
            positionReserve0, // uint256 reserve0;
            positionReserve1, // uint256 reserve1;
            getDividend(positionId), // uint256 dividend;
            position.claimedAmount, // uint256 cumulatedDividend;
            pair.fee(), // uint16 fee;
            position.enableLock, // bool enableLock;
            position.lock // uint32 lock;
        );
    }

    /// @notice Decrease LP for a position
    /// @param params Predefined parameters struct
    // @param tokenA Base token from the Pair
    // @param tokenB Quote token from the Pair
    // @param fee Associated fee to the Pair
    // @param liquidity Liquidity to be burned
    // @param amountAMin Minimum tokenA amount to be withdrawn from the position
    // @param amountBMin Minimum tokenB amount to be withdrawn from the position
    // @param to Address owner associated to the position
    // @param deadline Unix timestamp after which the transaction will revert
    // @param positionId Position ID
    /// @return amountA tokenA amount received
    /// @return amountB tokenB amount received
    function decreasePosition(DecreasePositionParams calldata params)
        external
        virtual
        isOwner(params.positionId)
        ensure(params.deadline)
        returns (uint256 amountA, uint256 amountB)
    {
        if (block.timestamp <= positions[params.positionId].lock) {
            revert LockedLiquidity();
        }

        (uint256 amount0, uint256 amount1) = IPair(
            pairFor(params.tokenA, params.tokenB, params.fee)
        ).burn(params.to, params.positionId, params.liquidity);
        (address token0,) = sortTokens(params.tokenA, params.tokenB);
        (amountA, amountB) =
            params.tokenA == token0 ? (amount0, amount1) : (amount1, amount0);
        if (amountA < params.amountAMin) revert InsufficientAAmount();
        if (amountB < params.amountBMin) revert InsufficientBAmount();

        emit Decrease(
            msg.sender,
            params.positionId,
            positions[params.positionId].pair,
            amountA,
            amountB,
            params.liquidity
        );
    }

    /// @notice Decrease LP for a position in an Pair with ETH
    /// @param params Predefined parameters struct
    // @param token Token from the Pair
    // @param fee Associated fee to the Pair
    // @param liquidity Liquidity to be burned
    // @param amountTokenMin Minimum token amount to be withdrawn from the position
    // @param amountETHMin Minimum ETH amount to be withdrawn from the position
    // @param to Address owner associated to the position
    // @param deadline Unix timestamp after which the transaction will revert
    // @param positionId Position ID
    /// @return amountToken Token amount received
    /// @return amountETH ETH amount received
    function decreasePositionETH(DecreasePositionETHParams calldata params)
        external
        isOwner(params.positionId)
        ensure(params.deadline)
        returns (uint256 amountToken, uint256 amountETH)
    {
        if (block.timestamp <= positions[params.positionId].lock) {
            revert LockedLiquidity();
        }

        (uint256 amount0, uint256 amount1) = IPair(
            pairFor(params.token, WETH, params.fee)
        ).burn(address(this), params.positionId, params.liquidity);
        (address token0,) = sortTokens(params.token, WETH);
        (amountToken, amountETH) =
            params.token == token0 ? (amount0, amount1) : (amount1, amount0);
        if (amountToken < params.amountTokenMin) revert InsufficientAAmount();
        if (amountETH < params.amountETHMin) revert InsufficientBAmount();

        TransferHelper.safeTransfer(params.token, params.to, amountToken);
        IWETH(WETH).withdraw(amountETH);
        TransferHelper.safeTransferETH(params.to, amountETH);

        emit Decrease(
            msg.sender,
            params.positionId,
            positions[params.positionId].pair,
            amountToken,
            amountETH,
            params.liquidity
        );
    }

    function _baseURI()
        internal
        view
        virtual
        override
        returns (string memory)
    {
        uint256 chainId = block.chainid;
        return string(
            abi.encodePacked(
                "https://metadata.bundles.fi/positions/",
                Strings.toString(chainId),
                "/"
            )
        );
    }

    /// @notice Claim dividend for a position
    /// @param positionId Position ID to claim
    /// @return claimedAmount Dividend amount claimed
    function claimDividend(uint256 positionId)
        public
        isOwnerOrAllowed(positionId)
        returns (uint256 claimedAmount)
    {
        IPair pair = IPair(positions[positionId].pair);
        positions[positionId].claimedAmount +=
            pair.claimableDividends(address(this), positionId);
        claimedAmount = pair.claimDividend(msg.sender, positionId);
        emit Claim(
            ownerOf(positionId),
            positionId,
            positions[positionId].pair,
            claimedAmount
        );
    }

    // ADD LIQUIDITY
    function _addLiquidity(
        address tokenA,
        address tokenB,
        uint16 fee,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin
    ) internal virtual returns (uint256 amountA, uint256 amountB) {
        // create pair if it doesn't exist
        if (ISwapFactory(factory).getPair(tokenA, tokenB, fee) == address(0)) {
            ISwapFactory(factory).createPair(tokenA, tokenB, fee);
        }
        (uint256 reserveA, uint256 reserveB) = getReserves(tokenA, tokenB, fee);
        if (reserveA == 0 && reserveB == 0) {
            // pool is a new one
            (amountA, amountB) = (amountADesired, amountBDesired);
        } else {
            uint256 amountBOptimal = quote(amountADesired, reserveA, reserveB);
            if (amountBOptimal <= amountBDesired) {
                if (amountBOptimal < amountBMin) revert InsufficientBAmount();
                (amountA, amountB) = (amountADesired, amountBOptimal);
            } else {
                uint256 amountAOptimal =
                    quote(amountBDesired, reserveB, reserveA);
                assert(amountAOptimal <= amountADesired);
                if (amountAOptimal < amountAMin) revert InsufficientAAmount();
                (amountA, amountB) = (amountAOptimal, amountBDesired);
            }
        }
    }

    /// @notice Get the dividend of a single position
    /// @param positionId Position ID
    /// @return dividend Dividends owed
    function getDividend(uint256 positionId)
        internal
        view
        returns (uint256 dividend)
    {
        IPair pair = IPair(positions[positionId].pair);
        dividend = pair.claimableDividends(address(this), positionId);
    }

    function _beforeTokenTransfer(address from, address to, uint256 positionId)
        internal
        virtual
        override
    {
        super._beforeTokenTransfer(from, to, positionId);
        positions[positionId].delegate = address(0);
    }

    // **** LIBRARY FUNCTIONS ADDED INTO THE CONTRACT ****
    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB)
        internal
        view
        returns (address token0, address token1)
    {
        if (tokenA == tokenB) revert IdenticalAddresses();
        if (tokenA == protocolToken || tokenB == protocolToken) {
            (token0, token1) = tokenA == protocolToken
                ? (protocolToken, tokenB)
                : (protocolToken, tokenA);
            if (token1 == address(0)) revert ZeroAddress();
        } else {
            (token0, token1) =
                tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
            if (token0 == address(0)) revert ZeroAddress();
        }
    }

    // calculates the CREATE2 address for a pair without making any external calls
    function pairFor(address tokenA, address tokenB, uint16 fee)
        internal
        view
        returns (address pair)
    {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        pair = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex"ff",
                            factory,
                            keccak256(
                                abi.encodePacked(
                                    token0, token1, fee, protocolToken
                                )
                            ),
                            token0 == protocolToken
                                ?
                                hex"e482076c47481b6652287a3b6ef16bc8047ff83dde52d08962662fff8ab4d471" // OraclePair init code hash
                                :
                                hex"08a7dcb0d57455844c111557ac432bed1155e9e22b4287531589314e91858500" // Pair init code hash
                        )
                    )
                )
            )
        );
    }

    // fetches and sorts the reserves for a pair
    function getReserves(address tokenA, address tokenB, uint16 fee)
        internal
        view
        returns (uint256 reserveA, uint256 reserveB)
    {
        (address token0,) = sortTokens(tokenA, tokenB);
        (uint256 reserve0, uint256 reserve1,) =
            IPair(pairFor(tokenA, tokenB, fee)).getReserves();
        (reserveA, reserveB) =
            tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    // given some amount of an asset and pair reserves, returns an equivalent amount of the other asset
    function quote(uint256 amountA, uint256 reserveA, uint256 reserveB)
        internal
        pure
        returns (uint256)
    {
        if (amountA == 0) revert InsufficientAmount();
        if (reserveA == 0 || reserveB == 0) revert InsufficientLiquidity();
        return (amountA * reserveB) / reserveA;
    }
}
