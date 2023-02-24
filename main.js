`   <p>
<span><b>Người dùng:</b></span><span>Tân</span>
</p>
<p>
<span><b>Thang máy số:</b></span><span>1</span>
</p>
<p>
<span><b>Vào tầng:</b></span><span>1</span>
</p>
<p>
<span><b>Ra tầng:</b></span><span>6</span>
</p>
<p>
<span><b>Thời gian:</b></span><span>10h</span>
    </p>

    <p>
<span><b>Người dùng:</b></span><span>Minh</span>
</p>
<p>
<span><b>Thang máy số:</b></span><span>1</span>
</p>
<p>
<span><b>Vào tầng:</b></span><span>1</span>
</p>
<p>
<span><b>Ra tầng:</b></span><span>7</span>
</p>
<p>
<span><b>Thời gian:</b></span><span>12h</span>
    </p>
`
let users = [
    {
        id: 1,
        name: 'tan',
        gender: true,
    },
    {
        id: 2,
        name: 'phuong',
        gender: false,
    },
    {
        id: 3,
        name: 'thanh',
        gender: true,
    },
    {
        id: 4,
        name: 'minh',
        gender: true,
    },
]
let lifts = [
    {
        id: 1,
        name: 'Thang máy 1',
        status: true,
        currentFloor: 1
    },
    {
        id: 2,
        name: 'Thang máy 2',
        status: false,
        currentFloor: 15
    },
    {
        id: 3,
        name: 'Thang máy 3',
        status: true,
        currentFloor: 10
    },
    {
        id: 4,
        name: 'Thang máy 4',
        status: true,
        currentFloor: 19
    },
]
let actions = [
    {
        id: 1,
        userId: 1,
        liftId: 1,
        from: 1,
        to: 10,
        time: (new Date(2023,0,5)).getTime(),
    },
    {
        id: 2,
        userId: 2,
        liftId: 2,
        from: 2,
        to: 10,
        time: (new Date(2023,3,6)).getTime(),
    },
    {
        id: 3,
        userId: 3,
        liftId: 3,
        from: 3,
        to: 10,
        time: (new Date(2023,2,15)).getTime(),
    },
    {
        id: 4,
        userId: 4,
        liftId: 4,
        from: 4,
        to: 10,
        time: (new Date(2023,7,2)).getTime(),
    },
    {
        id: 5,
        userId: 1,
        liftId: 1,
        from: 5,
        to: 10,
        time: (new Date(2023,10,15)).getTime(),
    },
    {
        id: 6,
        userId: 2,
        liftId: 2,
        from: 6,
        to: 10,
        time: (new Date(2023,10,15)).getTime(),
    },
    {
        id: 7,
        userId: 4,
        liftId: 3,
        from: 7,
        to: 10,
        time: (new Date(2023,10,8)).getTime(),
    },
]

let result = actions
//     .filter((act) => {
//     console.log('aaaaaaaa',act);
//     let start2023 = new Date(2023,0,1)
//     return act.time >= start2023;
// })
.sort((a,b) => {
    if(a.time < b.time) return -1;
    else return 1;
})
.map(act => {
    let user = users.find((u) => u.id == act.userId);
    let lift = lift.find((i) => i.id == act.liftId);
  
    return `<p>Người dùng: ${users.name}</p>
        <p>Tên thang máy: ${lift ? lift.name :''}</p>
        <p>Vào tầng: ${act.from}</p>
        <p>Ra tầng: ${act.to}</p>
        <p>Thời gian vào: năm ${new Date(act.time).getFullYear}</p>
    `;
  });
  console.log("xxxxxxxxxxx", result);
