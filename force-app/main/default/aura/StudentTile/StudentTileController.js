({
    onStudentClick: function (component, event, helper) {
        var student = component.get('v.student');
        console.log('Name', student.Name);
        console.log('Photo', student.PhotoUrl);
    }
})